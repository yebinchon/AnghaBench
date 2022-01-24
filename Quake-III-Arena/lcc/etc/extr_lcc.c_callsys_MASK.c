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

/* Variables and functions */
 int /*<<< orphan*/  _P_WAIT ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,char**) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char** FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* progname ; 
 char** FUNC5 (char**,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (char*,char) ; 
 char* FUNC7 (char*,int,char*) ; 
 int verbose ; 

__attribute__((used)) static int FUNC8(char **av) {
	int i, status = 0;
	static char **argv;
	static int argc;

	for (i = 0; av[i] != NULL; i++)
		;
	if (i + 1 > argc) {
		argc = i + 1;
		if (argv == NULL)
			argv = FUNC3(argc*sizeof *argv);
		else
			argv = FUNC5(argv, argc*sizeof *argv);
		FUNC1(argv);
	}
	for (i = 0; status == 0 && av[i] != NULL; ) {
		int j = 0;
		char *s;
		for ( ; av[i] != NULL && (s = FUNC6(av[i], '\n')) == NULL; i++)
			argv[j++] = av[i];
		if (s != NULL) {
			if (s > av[i])
				argv[j++] = FUNC7("%.*s", s - av[i], av[i]);
			if (s[1] != '\0')
				av[i] = s + 1;
			else
				i++;
		}
		argv[j] = NULL;
		if (verbose > 0) {
			int k;
			FUNC2(stderr, "%s", argv[0]);
			for (k = 1; argv[k] != NULL; k++)
				FUNC2(stderr, " %s", argv[k]);
			FUNC2(stderr, "\n");
		}
		if (verbose < 2)
			status = FUNC0(_P_WAIT, argv[0], argv);
		if (status == -1) {
			FUNC2(stderr, "%s: ", progname);
			FUNC4(argv[0]);
		}
	}
	return status;
}