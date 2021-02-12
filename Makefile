all: build

build:
	@docker build --tag=vynazevedo/openfire .

release: build
	@docker build --tag=vynazevedo/openfire:$(shell cat VERSION) .