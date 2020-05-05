# Makefile for allennlp-utils
#
# 	GitHb: https://github.com/wj-Mcat/allennlp-utils
# 	Author: wujingjing <1435130236@qq.com>
#

.PHONY: all
all : generate

.PHONY: clean
clean:
	rm -fr generated/*

.PHONY: install
install:
	pip install -r requirements.txt
	pip install -r requirements-dev.txt

.PHONY: test
pytest:
	pytest src/ tests/

code:
	code .

.PHONY: dist
dist:
	python3 setup.py sdist bdist_wheel

.PHONY: publish
publish:
	PATH=~/.local/bin:${PATH} twine upload dist/*
