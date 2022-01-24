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
 int BUFSIZ ; 
 int /*<<< orphan*/  VPATH ; 
 char* config_directory ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 char* machinename ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ profiling ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 

void
FUNC9(FILE *ofp)
{
	FILE *ifp;
	char pname[BUFSIZ];
	char line[BUFSIZ];

	(void) FUNC7(line, "%s/Makefile.%s", config_directory, machinename);
	ifp = FUNC3(VPATH, line, pname, "r");
	if (ifp == 0) {
		FUNC6(line);
		FUNC0(1);
	}
	while (FUNC2(line, BUFSIZ, ifp) != 0) {
		if (profiling && (FUNC8(line, "LIBS=", 5) == 0)) 
			FUNC4(ofp,"LIBS=${LIBS_P}\n");
		else
			FUNC5(line, ofp);
	}
	FUNC1(ifp);
}