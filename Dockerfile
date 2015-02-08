FROM google/debian:wheezy
MAINTAINER Tom Clift (@tclift)

RUN \
	DEBIAN_FRONTEND=noninteractive &&\
	apt-get -q update &&\
	apt-get install -y openjdk-7-jre-headless &&\
	apt-get clean &&\
	rm -rf /var/lib/apt/lists/*
