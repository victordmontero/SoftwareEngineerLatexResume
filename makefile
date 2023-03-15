

resume.pdf: resume.tex awesome-cv.cls resume/skills.tex
	xelatex resume.tex
	# docker run --rm -v $(pwd):/root/env note_latex-env xelatex resume.tex

.PHONY: clean

clean:
	rm -rf resume.log resume.out texput.log resume.pdf resume.aux