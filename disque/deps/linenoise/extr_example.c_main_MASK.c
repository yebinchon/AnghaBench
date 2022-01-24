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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  completion ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 

int FUNC15(int argc, char **argv) {
    char *line;
    char *prgname = argv[0];

    /* Parse options, with --multiline we enable multi line editing. */
    while(argc > 1) {
        argc--;
        argv++;
        if (!FUNC13(*argv,"--multiline")) {
            FUNC11(1);
            FUNC12("Multi-line mode enabled.\n");
        } else if (!FUNC13(*argv,"--keycodes")) {
            FUNC9();
            FUNC1(0);
        } else {
            FUNC2(stderr, "Usage: %s [--multiline] [--keycodes]\n", prgname);
            FUNC1(1);
        }
    }

    /* Set the completion callback. This will be called every time the
     * user uses the <tab> key. */
    FUNC10(completion);

    /* Load history from file. The history file is just a plain text file
     * where entries are separated by newlines. */
    FUNC6("history.txt"); /* Load the history at startup */

    /* Now this is the main loop of the typical linenoise-based application.
     * The call to linenoise() will block as long as the user types something
     * and presses enter.
     *
     * The typed string is returned as a malloc() allocated string by
     * linenoise, so the user needs to free() it. */
    while((line = FUNC4("hello> ")) != NULL) {
        /* Do something with the string. */
        if (line[0] != '\0' && line[0] != '/') {
            FUNC12("echo: '%s'\n", line);
            FUNC5(line); /* Add to the history. */
            FUNC7("history.txt"); /* Save the history on disk. */
        } else if (!FUNC14(line,"/historylen",11)) {
            /* The "/historylen" command will change the history len. */
            int len = FUNC0(line+11);
            FUNC8(len);
        } else if (line[0] == '/') {
            FUNC12("Unreconized command: %s\n", line);
        }
        FUNC3(line);
    }
    return 0;
}