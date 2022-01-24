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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  Vector ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  asmfile ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  cppdefs ; 
 scalar_t__ cpponly ; 
 int /*<<< orphan*/  delete_temp_files ; 
 int /*<<< orphan*/  dumpasm ; 
 scalar_t__ dumpast ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,scalar_t__,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  infile ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ outfile ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int,char**) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *,int) ; 
 int FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

int FUNC26(int argc, char **argv) {
    FUNC22(stdout, NULL);
    if (FUNC0(delete_temp_files))
        FUNC15("atexit");
    FUNC14(argc, argv);
    FUNC10(infile);
    FUNC5();
    FUNC13();
    FUNC21(FUNC12());
    if (FUNC3(cppdefs) > 0)
        FUNC18(FUNC2(cppdefs));

    if (cpponly)
        FUNC16();

    Vector *toplevels = FUNC19();
    for (int i = 0; i < FUNC24(toplevels); i++) {
        Node *v = FUNC23(toplevels, i);
        if (dumpast)
            FUNC17("%s", FUNC11(v));
        else
            FUNC6(v);
    }

    FUNC4();

    if (!dumpast && !dumpasm) {
        if (!outfile)
            outfile = FUNC20(FUNC1(infile), 'o');
        pid_t pid = FUNC9();
        if (pid < 0) FUNC15("fork");
        if (pid == 0) {
            FUNC8("as", "as", "-o", outfile, "-c", asmfile, (char *)NULL);
            FUNC15("execl failed");
        }
        int status;
        FUNC25(pid, &status, 0);
        if (status < 0)
            FUNC7("as failed");
    }
    return 0;
}