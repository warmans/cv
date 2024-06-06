HUGO_VERSION=0.127.0

.PHONY: setup
setup:
	mkdir -p .bin

.PHONY: install
install: setup
	cd .bin && \
	wget https://github.com/gohugoio/hugo/releases/download/v$(HUGO_VERSION)/hugo_extended_$(HUGO_VERSION)_Linux-64bit.tar.gz && \
	tar xvf hugo_extended_$(HUGO_VERSION)_Linux-64bit.tar.gz

.PHONY: start
start:
	cd cv-html && hugo server --disableFastRender --logLevel debug
