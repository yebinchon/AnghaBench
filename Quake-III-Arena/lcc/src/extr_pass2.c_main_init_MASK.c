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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int errlimit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int glevel ; 
 char* rcsid ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 int FUNC8 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  verbose ; 
 int /*<<< orphan*/  wflag ; 

void FUNC9(int argc, char *argv[]) {
	int i;
	static int inited;

	if (inited)
		return;
	inited = 1;
	for (i = 1; i < argc; i++)
		if (FUNC6(argv[i], "-g") == 0 || FUNC6(argv[i], "-g2") == 0)
			glevel = 2;
		else if (FUNC6(argv[i], "-w") == 0)
			wflag++;
		else if (FUNC6(argv[i], "-v") == 0) {
			FUNC4(stderr, "%s %s\n", argv[0], rcsid);
			verbose++;
		} else if (FUNC7(argv[i], "-errout=", 8) == 0) {
			FILE *f = FUNC3(argv[i]+8, "w");
			if (f == NULL) {
				FUNC4(stderr, "%s: can't write errors to `%s'\n", argv[0], argv[i]+8);
				FUNC1(EXIT_FAILURE);
			}
			FUNC2(f);
			f = FUNC5(argv[i]+8, "w", stderr);
			FUNC0(f);
		} else if (FUNC7(argv[i], "-e", 2) == 0) {
			int x;
			if ((x = FUNC8(&argv[i][2], NULL, 0)) > 0)
				errlimit = x;
		}
}