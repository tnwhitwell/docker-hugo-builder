FROM docker:git

MAINTAINER Tom Whitwell version: 1.0

ADD https://github.com/gohugoio/hugo/releases/download/v0.38.2/hugo_0.38.2_Linux-64bit.tar.gz /tmp/hugo.tar.gz

RUN tar xzf /tmp/hugo.tar.gz hugo && chmod +x hugo && mv hugo /bin && rm /tmp/hugo.tar.gz

ENTRYPOINT ["git"]
CMD ["--help"]
