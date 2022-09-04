FROM node:14 AS builder

WORKDIR /usr/src/app

COPY package.json /usr/src/app/package.json

RUN yarn install --network-concurrency 1 --no-lockfile

COPY . .
