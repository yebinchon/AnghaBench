#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* str; struct TYPE_4__* link; } ;
typedef  TYPE_1__* List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * com ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  ilist ; 
 char* inputs ; 
 TYPE_1__* lccinputs ; 
 int /*<<< orphan*/ * llist ; 
 TYPE_1__* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(void) {
	char *s = FUNC2("LCCINPUTS");
	List list, b;

	if (s == 0 || (s = inputs)[0] == 0)
		s = ".";
	if (s) {
		lccinputs = FUNC3(s);
		if ((b = lccinputs))
			do {
				b = b->link;
				if (FUNC4(b->str, ".") != 0) {
					ilist = FUNC0(FUNC1("-I", b->str), ilist);
					if (FUNC6(com[1], "win32") == NULL)
						llist[0] = FUNC0(FUNC1("-L", b->str), llist[0]);
				} else
					b->str = "";
			} while (b != lccinputs);
	}
#ifdef WIN32
	if (list = b = path2list(getenv("include")))
		do {
			b = b->link;
			ilist = append(stringf("-I\"%s\"", b->str), ilist);
		} while (b != list);
#endif
}