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
 int /*<<< orphan*/  FUNC0 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC6 (int*) ; 

__attribute__((used)) static int FUNC7(int mode, const char *cmdname, char *argv[]) {
	int pid, n, status;

	switch (pid = FUNC3()) {
	case -1:
		FUNC4(stderr, "%s: no more processes\n", progname);
		return 100;
	case 0:
		// TTimo removing hardcoded paths, searching in $PATH
		FUNC0(cmdname, argv);
		FUNC4(stderr, "%s: ", progname);
		FUNC5(cmdname);
		FUNC2(stdout);
		FUNC1(100);
	}
	while ((n = FUNC6(&status)) != pid && n != -1)
		;
	if (n == -1)
		status = -1;
	if (status&0377) {
		FUNC4(stderr, "%s: fatal error in %s\n", progname, cmdname);
		status |= 0400;
	}
	return (status>>8)&0377;
}