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
struct file_list {scalar_t__ f_type; char* f_fn; struct file_list* f_next; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ INVISIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct file_list* ftab ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct file_list*) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 

void
FUNC4(FILE *fp, const char *msg, char ext)
{
	struct file_list *tp;
	int lpos, len=0; /* dvw: init to 0 */

	FUNC0(fp, "%s", msg);
	lpos = 8;
	for (tp = ftab; tp != 0; tp = tp->f_next) {
		if (tp->f_type == INVISIBLE)
			continue;
		if (tp->f_fn[FUNC3(tp->f_fn)-1] != ext)
			continue;
		/*
		 * Always generate a newline.
		 * Our Makefile's aren't readable anyway.
		 */

		lpos = 8;
		FUNC0(fp, "\\\n\t");
		FUNC1(fp, tp);
		lpos += len + 1;
	}
	FUNC2('\n', fp);
}