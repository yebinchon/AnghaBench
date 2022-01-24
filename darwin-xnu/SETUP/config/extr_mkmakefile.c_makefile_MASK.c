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
struct opt {char* op_value; char* op_name; struct opt* op_next; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 scalar_t__ COPTS ; 
 int /*<<< orphan*/  VPATH ; 
 char* config_directory ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC12 (char*,char) ; 
 char* machinename ; 
 scalar_t__ FUNC13 (unsigned int) ; 
 struct opt* mkopt ; 
 struct opt* opt ; 
 char* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 scalar_t__ profiling ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 char* source_directory ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,char*) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,char*) ; 
 scalar_t__ FUNC21 (char*) ; 
 scalar_t__ FUNC22 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 

void
FUNC24(void)
{
	FILE *ifp, *ofp;
	FILE *dfp;
	char pname[BUFSIZ];
	char line[BUFSIZ];
	struct opt *op;

	FUNC17();
	(void) FUNC19(line, "%s/Makefile.template", config_directory);
	ifp = FUNC10(VPATH, line, pname, "r");
	if (ifp == 0) {
		FUNC15(line);
		FUNC6(1);
	}
	dfp = FUNC9(FUNC14("Makefile"), "r");
	FUNC18(FUNC14("Makefile"), FUNC14("Makefile.old"));
	FUNC23(FUNC14("Makefile.old"));
	ofp = FUNC9(FUNC14("Makefile"), "w");
	if (ofp == 0) {
		FUNC15(FUNC14("Makefile"));
		FUNC6(1);
	}
	FUNC11(ofp, "SOURCE_DIR=%s\n", source_directory);

	FUNC11(ofp, "export CONFIG_DEFINES =");
	if (profiling)
		FUNC11(ofp, " -DGPROF");

	for (op = opt; op; op = op->op_next)
		if (op->op_value)
			FUNC11(ofp, " -D%s=\"%s\"", op->op_name, op->op_value);
		else
			FUNC11(ofp, " -D%s", op->op_name);
	FUNC11(ofp, "\n");
	for (op = mkopt; op; op = op->op_next)
		if (op->op_value)
			FUNC11(ofp, "%s=%s\n", op->op_name, op->op_value);
		else
			FUNC11(ofp, "%s\n", op->op_name);

	while (FUNC8(line, BUFSIZ, ifp) != 0) {
		if (*line == '%')
			goto percent;
		if (profiling && FUNC22(line, "COPTS=", 6) == 0) {
			char *cp;
			FUNC11(ofp,
				"GPROF.EX=$(SOURCE_DIR)/machdep/%s/gmon.ex\n", machinename);
			cp = FUNC12(line, '\n');
			if (cp)
				*cp = 0;
			cp = line + 6;
			while (*cp && (*cp == ' ' || *cp == '\t'))
				cp++;
			COPTS = FUNC13((unsigned)(FUNC21(cp) + 1));
			if (COPTS == 0) {
				FUNC16("config: out of memory\n");
				FUNC6(1);
			}
			FUNC20(COPTS, cp);
			FUNC11(ofp, "%s -pg\n", line);
			continue;
		}
		FUNC11(ofp, "%s", line);
		continue;
	percent:
		if (FUNC5(line, "%OBJS\n")) {
			FUNC3(ofp, "OBJS=", -1);
		} else if (FUNC5(line, "%CFILES\n")) {
			FUNC1(ofp, "CFILES=", 'c');
			FUNC3(ofp, "COBJS=", 'c');
		} else if (FUNC5(line, "%CXXFILES\n")) {
			FUNC1(ofp, "CXXFILES=", 'p');
			FUNC3(ofp, "CXXOBJS=", 'p');
		} else if (FUNC5(line, "%SFILES\n")) {
			FUNC1(ofp, "SFILES=", 's');
			FUNC3(ofp, "SOBJS=", 's');
		} else if (FUNC5(line, "%MACHDEP\n")) {
			FUNC2(ofp);
		} else if (FUNC5(line, "%RULES\n"))
			FUNC4(ofp);
		else
			FUNC11(stderr,
			    "Unknown %% construct in generic makefile: %s",
			    line);
	}
	if (dfp != NULL)
	{
		FUNC0(dfp, ofp);
		(void) FUNC7(dfp);
	}
	(void) FUNC7(ifp);
	(void) FUNC7(ofp);
}