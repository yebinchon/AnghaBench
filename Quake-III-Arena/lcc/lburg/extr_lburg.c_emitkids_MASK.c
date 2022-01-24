#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ern; struct TYPE_3__* kids; int /*<<< orphan*/  pattern; struct TYPE_3__* link; } ;
typedef  TYPE_1__* Rule ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char* FUNC4 (void*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(Rule rules, int nrules) {
	int i;
	Rule r, *rc = FUNC0((nrules + 1 + 1)*sizeof *rc);
	char **str  = FUNC0((nrules + 1 + 1)*sizeof *str);

	for (i = 0, r = rules; r; r = r->link) {
		int j = 0;
		char buf[1024], *bp = buf;
		*FUNC1(r->pattern, "p", bp, &j) = 0;
		for (j = 0; str[j] && FUNC3(str[j], buf); j++)
			;
		if (str[j] == NULL)
			str[j] = FUNC4(FUNC0(FUNC5(buf) + 1), buf);
		r->kids = rc[j];
		rc[j] = r;
	}
	FUNC2("static void %Pkids(NODEPTR_TYPE p, int eruleno, NODEPTR_TYPE kids[]) {\n"
"%1if (!p)\n%2fatal(\"%Pkids\", \"Null tree\\n\", 0);\n"
"%1if (!kids)\n%2fatal(\"%Pkids\", \"Null kids\\n\", 0);\n"
"%1switch (eruleno) {\n");
	for (i = 0; (r = rc[i]) != NULL; i++) {
		for ( ; r; r = r->kids)
			FUNC2("%1case %d: /* %R */\n", r->ern, r);
		FUNC2("%s%2break;\n", str[i]);
	}
	FUNC2("%1default:\n%2fatal(\"%Pkids\", \"Bad rule number %%d\\n\", eruleno);\n%1}\n}\n\n");
}