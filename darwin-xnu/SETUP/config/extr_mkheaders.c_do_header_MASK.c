#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct file_list {char* f_fn; int f_type; struct file_list* f_next; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 char* FUNC9 (char const*) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (char const*) ; 
 char* FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void
FUNC15(const char *dev, const char *hname, int count)
{
	char *file, *name;
	const char *inw;
	char *inwcopy;
	struct file_list *fl = NULL;	/* may exit for(;;) uninitted */
	struct file_list *fl_head, *fl_prev;
	FILE *inf, *outf;
	int inc, oldcount;

	file = FUNC12(hname);
	name = FUNC13(dev?dev:hname) + (dev == NULL);
	inf = FUNC4(file, "r");
	oldcount = -1;
	if (inf == 0) {
		(void) FUNC14(file);
		outf = FUNC4(file, "w");
		if (outf == 0) {
			FUNC11(file);
			FUNC2(1);
		}
		FUNC5(outf, "#define %s %d\n", name, count);
		(void) FUNC3(outf);
		file = FUNC10("meta_features.h");
		outf = FUNC4(file, "a");
		if (outf == 0) {
			FUNC11(file);
			FUNC2(1);
		}
		FUNC5(outf, "#include <%s.h>\n", hname);
		(void) FUNC3(outf);
		return;
	}
	fl_head = 0;
	for (;;) {
		const char *cp;
		if ((inw = FUNC7(inf)) == 0 || inw == (char *)EOF)
			break;
		if ((inw = FUNC7(inf)) == 0 || inw == (char *)EOF)
			break;
		inwcopy = FUNC9(inw);
		cp = FUNC7(inf);
		if (cp == 0 || cp == (char *)EOF)
			break;
		inc = FUNC0(cp);
		if (FUNC1(inwcopy, name)) {
			oldcount = inc;
			inc = count;
		}
		cp = FUNC7(inf);
		if (cp == (char *)EOF)
			break;
		fl = (struct file_list *) FUNC8(sizeof *fl);
		fl->f_fn = inwcopy;
		fl->f_type = inc;
		fl->f_next = fl_head;
		fl_head = fl;
	}
	(void) FUNC3(inf);
	if (count == oldcount) {
		while (fl !=0) {
			fl_prev = fl;
			fl = fl->f_next;
			FUNC6((char *)fl_prev);
		}
		return;
	}
	if (oldcount == -1) {
		fl = (struct file_list *) FUNC8(sizeof *fl);
		fl->f_fn = name;
		fl->f_type = count;
		fl->f_next = fl_head;
		fl_head = fl;
	}
	FUNC14(file);
	outf = FUNC4(file, "w");
	if (outf == 0) {
		FUNC11(file);
		FUNC2(1);
	}
	for (fl = fl_head; fl != 0; fl = fl->f_next) {
		FUNC5(outf, "#define %s %d\n",
		    fl->f_fn, count ? fl->f_type : 0);
		FUNC6((char *)fl);
	}
	(void) FUNC3(outf);
}