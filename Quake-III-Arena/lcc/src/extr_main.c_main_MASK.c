#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  (* progend ) () ;int /*<<< orphan*/  (* stabend ) (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* stabinit ) (int /*<<< orphan*/ ,int,char**) ;int /*<<< orphan*/  (* progbeg ) (int,char**) ;} ;
struct TYPE_10__ {char* name; TYPE_7__* ir; } ;
struct TYPE_9__ {scalar_t__ end; } ;
struct TYPE_8__ {int /*<<< orphan*/  y; scalar_t__ x; int /*<<< orphan*/  file; } ;
typedef  int /*<<< orphan*/ * Symbol ;
typedef  TYPE_1__ Coordinate ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  GLOBAL ; 
 TYPE_7__* IR ; 
 int /*<<< orphan*/  PERM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_6__* bindings ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ errcnt ; 
 TYPE_4__ events ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  firstfile ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int glevel ; 
 int /*<<< orphan*/  identifiers ; 
 int /*<<< orphan*/  FUNC7 (int,char**) ; 
 int /*<<< orphan*/  lineno ; 
 int /*<<< orphan*/  loci ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC11 (char*,char) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int,char**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char**) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  symbols ; 
 int /*<<< orphan*/  t ; 
 int /*<<< orphan*/  types ; 
 int /*<<< orphan*/  typestab ; 
 scalar_t__ xref ; 

int FUNC19(int argc, char *argv[]) {
	int i, j;
	for (i = argc - 1; i > 0; i--)
		if (FUNC13(argv[i], "-target=", 8) == 0)
			break;
	if (i > 0) {
		char *s = FUNC11(argv[i], '\\');
		if (s != NULL)
			*s = '/';
		for (j = 0; bindings[j].name && bindings[j].ir; j++)
			if (FUNC12(&argv[i][8], bindings[j].name) == 0) {
				IR = bindings[j].ir;
				break;
			}
		if (s != NULL)
			*s = '\\';
	}
	if (!IR) {
		FUNC5(stderr, "%s: unknown target", argv[0]);
		if (i > 0)
			FUNC5(stderr, " `%s'", &argv[i][8]);
		FUNC5(stderr, "; must specify one of\n");
		for (i = 0; bindings[i].name; i++)
			FUNC5(stderr, "\t-target=%s\n", bindings[i].name);
		FUNC2(EXIT_FAILURE);
	}
	FUNC7(argc, argv);
	t = FUNC6();
	(*IR->progbeg)(argc, argv);
	if (glevel && IR->stabinit)
		(*IR->stabinit)(firstfile, argc, argv);
	FUNC10();
	if (events.end)
		FUNC0(events.end, NULL, NULL);
	FUNC9(&events, 0, sizeof events);
	if (glevel || xref) {
		Symbol symroot = NULL;
		Coordinate src;
		FUNC4(types,       GLOBAL, typestab, &symroot);
		FUNC4(identifiers, GLOBAL, typestab, &symroot);
		src.file = firstfile;
		src.x = 0;
		src.y = lineno;
		if ((glevel > 2 || xref) && IR->stabend)
			(*IR->stabend)(&src, symroot,
				FUNC8(&loci,    PERM),
				FUNC8(&symbols, PERM), NULL);
		else if (IR->stabend)
			(*IR->stabend)(&src, NULL, NULL, NULL, NULL);
	}
	FUNC3();
	(*IR->progend)();
	FUNC1(PERM);
	return errcnt > 0;
}