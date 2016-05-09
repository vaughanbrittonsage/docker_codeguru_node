FROM alpine:3.3

RUN apk add --update --no-cache nodejs git openssh bash curl make gcc g++ python linux-headers paxctl libgcc libstdc++ gnupg

# set up npm features
RUN npm completion >>.bashrc
RUN echo "alias npm-exec='PATH=$(npm bin):$PATH'" >>.bashrc

RUN npm install npm -g
RUN npm install -g gulp