FROM node:latest as development

WORKDIR /usr/src/server

COPY ./*.json /usr/src/server/

RUN npm install glob rimraf

RUN npm install --only=development

COPY ./src /usr/src/server/src

RUN npm run build

# COPY --from=development /usr/src/server/dist ./dist

# CMD ["node", "dist/main"]