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
struct TYPE_3__ {char* str; struct TYPE_3__* link; } ;
typedef  TYPE_1__* List ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  Eflag ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ SIG_IGN ; 
 scalar_t__ Sflag ; 
 int ac ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  av ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ cflag ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errcnt ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 TYPE_1__* ilist ; 
 char** include ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ interrupt ; 
 int /*<<< orphan*/  ld ; 
 scalar_t__* llist ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 char* outfile ; 
 scalar_t__ plist ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rmlist ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 int FUNC21 (char*) ; 
 scalar_t__ FUNC22 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * suffixes ; 
 char* tempdir ; 

FUNC23(int argc, char *argv[]) {
	int i, j, nf;
	
	progname = argv[0];
	ac = argc + 50;
	av = FUNC0(ac*sizeof(char *));
	if (FUNC18(SIGINT, SIG_IGN) != SIG_IGN)
		FUNC18(SIGINT, interrupt);
	if (FUNC18(SIGTERM, SIG_IGN) != SIG_IGN)
		FUNC18(SIGTERM, interrupt);
#ifdef SIGHUP
	if (signal(SIGHUP, SIG_IGN) != SIG_IGN)
		signal(SIGHUP, interrupt);
#endif
	if (FUNC12("TMP"))
		tempdir = FUNC12("TMP");
	else if (FUNC12("TEMP"))
		tempdir = FUNC12("TEMP");
	else if (FUNC12("TMPDIR"))
		tempdir = FUNC12("TMPDIR");
	FUNC2(tempdir);
	i = FUNC21(tempdir);
	for (; i > 0 && tempdir[i-1] == '/' || tempdir[i-1] == '\\'; i--)
		tempdir[i-1] = '\0';
	if (argc <= 1) {
		FUNC13();
		FUNC8(0);
	}
	plist = FUNC1("-D__LCC__", 0);
	FUNC14();
	if (FUNC12("LCCDIR"))
		FUNC16(FUNC20("-lccdir=%s", FUNC12("LCCDIR")));
	for (nf = 0, i = j = 1; i < argc; i++) {
		if (FUNC19(argv[i], "-o") == 0) {
			if (++i < argc) {
				if (FUNC22(argv[i], suffixes, 2) >= 0) {
					FUNC6("-o would overwrite %s", argv[i]);
					FUNC8(8);
				}
				outfile = argv[i];
				continue;
			} else {
				FUNC6("unrecognized option `%s'", argv[i-1]);
				FUNC8(8);
			}
		} else if (FUNC19(argv[i], "-target") == 0) {
			if (argv[i+1] && *argv[i+1] != '-')
				i++;
			continue;
		} else if (*argv[i] == '-' && argv[i][1] != 'l') {
			FUNC15(argv[i]);
			continue;
		} else if (*argv[i] != '-' && FUNC22(argv[i], suffixes, 3) >= 0)
			nf++;
		argv[j++] = argv[i];
	}
	if ((cflag || Sflag) && outfile && nf != 1) {
		FUNC11(stderr, "%s: -o %s ignored\n", progname, outfile);
		outfile = 0;
	}
	argv[j] = 0;
	for (i = 0; include[i]; i++)
		plist = FUNC1(include[i], plist);
	if (ilist) {
		List b = ilist;
		do {
			b = b->link;
			plist = FUNC1(b->str, plist);
		} while (b != ilist);
	}
	ilist = 0;
	for (i = 1; argv[i]; i++)
		if (*argv[i] == '-')
			FUNC15(argv[i]);
		else {
			char *name = FUNC7(argv[i]);
			if (name) {
				if (FUNC19(name, argv[i]) != 0
				|| nf > 1 && FUNC22(name, suffixes, 3) >= 0)
					FUNC11(stderr, "%s:\n", name);
				FUNC9(name, 0);
			} else
				FUNC6("can't find `%s'", argv[i]);
		}
	if (errcnt == 0 && !Eflag && !Sflag && !cflag && llist[1]) {
		FUNC4(ld, llist[0], llist[1],
			FUNC1(outfile ? outfile : FUNC5("a", FUNC10(suffixes[4])), 0));
		if (FUNC3(av))
			errcnt++;
	}
	FUNC17(rmlist);	
	return errcnt ? EXIT_FAILURE : EXIT_SUCCESS;
}