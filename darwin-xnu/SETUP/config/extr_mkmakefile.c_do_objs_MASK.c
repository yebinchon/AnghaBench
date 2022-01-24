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
 int FUNC3 (char const*) ; 
 char* FUNC4 (char const*) ; 

void
FUNC5(FILE *fp, const char *msg, int ext)
{
	struct file_list *tp;
	int lpos, len;
	char *cp;
	char och;
	const char *sp;

	FUNC0(fp, "%s", msg);
	lpos = FUNC3(msg);
	for (tp = ftab; tp != 0; tp = tp->f_next) {
		if (tp->f_type == INVISIBLE)
			continue;

		/*
		 *	Check for '.o' file in list
		 */
		cp = tp->f_fn + (len = FUNC3(tp->f_fn)) - 1;
		if (ext != -1 && *cp != ext)
			continue;
		else if (*cp == 'o') {
			if (len + lpos > 72) {
				lpos = 8;
				FUNC0(fp, "\\\n\t");
			}
			FUNC1(fp, tp);
			FUNC0(fp, " ");
			lpos += len + 1;
			continue;
		}
		sp = FUNC4(tp->f_fn);
		cp = (char *)sp + (len = FUNC3(sp)) - 1;
		och = *cp;
		*cp = 'o';
		if (len + lpos > 72) {
			lpos = 8;
			FUNC0(fp, "\\\n\t");
		}
		FUNC0(fp, "%s ", sp);
		lpos += len + 1;
		*cp = och;
	}
	FUNC2('\n', fp);
}