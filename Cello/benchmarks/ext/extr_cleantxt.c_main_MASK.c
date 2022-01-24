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
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC7 (char*,char*) ; 

int FUNC8(int argc, char *argv[])
{
	FILE *fp;
	int c = EOF;
	if (argc == 1) {
		FUNC4(stderr, "Usage: cleantxt <file>\n");
		return 1;
	}
	fp = FUNC7(argv[1], "-")? FUNC3(argv[1], "rb") : stdin;
	if (fp == 0) {
		FUNC4(stderr, "ERROR: fail to open the input file.\n");
		return 1;
	}
	while (!FUNC1(fp)) {
		c = FUNC2(fp);
		if (FUNC6(c) || c == '\t' || c == '\n' || c == ' ')
			FUNC5(c, stdout);
	}
	if (c != '\n') FUNC5('\n', stdout);
	FUNC0(fp);
	return 0;
}