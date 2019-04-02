FROM ubuntu:latest
ENV LC_ALL "en_US.UTF-8"
ENV LANGUAGE "en_US.UTF-8"
ENV LANG "en_US.UTF-8"
RUN apt-get update && apt-get install -y --no-install-recommends \
  openjdk-8-jdk \
  zipalign \
  ruby-dev \
  build-essential
RUN gem install fastlane -NV
RUN fastlane update_fastlane
RUN apt-get remove -y build-essential
RUN apt-get autoremove -y
