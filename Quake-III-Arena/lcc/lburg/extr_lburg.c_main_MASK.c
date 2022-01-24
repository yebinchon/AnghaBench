#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct block {struct block* link; } ;
struct TYPE_7__ {char* name; int /*<<< orphan*/  reached; int /*<<< orphan*/ * rules; struct TYPE_7__* link; } ;
typedef  TYPE_1__* Nonterm ;

/* Variables and functions */
 int EOF ; 
 int Tflag ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ errcnt ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct block*) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * infp ; 
 struct block* memlist ; 
 int /*<<< orphan*/  nrules ; 
 int /*<<< orphan*/  ntnumber ; 
 TYPE_1__* nts ; 
 int /*<<< orphan*/ * outfp ; 
 char* prefix ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rules ; 
 scalar_t__ start ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 scalar_t__ FUNC17 (char*,char*,int) ; 
 int /*<<< orphan*/  terms ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC19 () ; 

int FUNC20(int argc, char *argv[]) {
	int c, i;
	Nonterm p;
	
	for (i = 1; i < argc; i++)
		if (FUNC16(argv[i], "-T") == 0)
			Tflag = 1;
		else if (FUNC17(argv[i], "-p", 2) == 0 && argv[i][2])
			prefix = &argv[i][2];
		else if (FUNC17(argv[i], "-p", 2) == 0 && i + 1 < argc)
			prefix = argv[++i];
		else if (*argv[i] == '-' && argv[i][1]) {
			FUNC18("usage: %s [-T | -p prefix]... [ [ input ] output ] \n",
				argv[0]);
			FUNC10(1);
		} else if (infp == NULL) {
			if (FUNC16(argv[i], "-") == 0)
				infp = stdin;
			else if ((infp = FUNC12(argv[i], "r")) == NULL) {
				FUNC18("%s: can't read `%s'\n", argv[0], argv[i]);
				FUNC10(1);
			}
		} else if (outfp == NULL) {
			if (FUNC16(argv[i], "-") == 0)
				outfp = stdout;
			if ((outfp = FUNC12(argv[i], "w")) == NULL) {
				FUNC18("%s: can't write `%s'\n", argv[0], argv[i]);
				FUNC10(1);
			}
		}
	if (infp == NULL)
		infp = stdin;
	if (outfp == NULL)
		outfp = stdout;
	FUNC19();
	if (start)
		FUNC0(start);
	for (p = nts; p; p = p->link) {
		if (p->rules == NULL)
			FUNC18("undefined nonterminal `%s'\n", p->name);
		if (!p->reached)
			FUNC18("can't reach nonterminal `%s'\n", p->name);
	}
	FUNC3();
	FUNC2(nts, ntnumber);
	FUNC9(nts, ntnumber);
	FUNC6(rules, nrules);
	FUNC8(rules);
	FUNC7(nts);
	FUNC1(nts);
	if (start)
		FUNC5(terms, start, ntnumber);
	FUNC4(rules, nrules);
	if (!FUNC11(infp))
		while ((c = FUNC14(infp)) != EOF)
			FUNC15(c, outfp);
	while (memlist) {	/* for purify */
		struct block *q = memlist->link;
		FUNC13(memlist);
		memlist = q;
	}
	return errcnt > 0;
}