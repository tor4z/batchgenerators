init:
	pip install numpy ; \
    pip install -r requirements.txt

test:
	python -m unittest discover

install_develop:
	python setup.py develop

install:
	python setup.py install

dist: clean
	python setup.py sdist


build: dist


documentation:
	sphinx-apidoc -e -f DeepLearningBatchGeneratorUtils -o doc/

clean:
	-rm -rf dist
