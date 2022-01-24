#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * sds ;
struct TYPE_2__ {int interactive; char* prompt; scalar_t__ cluster_reissue_command; scalar_t__ cluster_mode; void* hostport; int /*<<< orphan*/  hostip; } ;

/* Variables and functions */
 scalar_t__ REDIS_OK ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  completionCallback ; 
 TYPE_1__ config ; 
 scalar_t__ context ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 long long FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC24 (char*,int*) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC26(void) {
    sds historyfile = NULL;
    int history = 0;
    char *line;
    int argc;
    sds *argv;

    config.interactive = 1;
    FUNC16(1);
    FUNC15(completionCallback);

    /* Only use history when stdin is a tty. */
    if (FUNC9(FUNC6(stdin))) {
        history = 1;

        if (FUNC8("HOME") != NULL) {
            historyfile = FUNC19(FUNC20(),"%s/.disque_history",FUNC8("HOME"));
            FUNC13(historyfile);
        }
    }

    FUNC3();
    while((line = FUNC10(context ? config.prompt : "not connected> ")) != NULL) {
        if (line[0] != '\0') {
            argv = FUNC24(line,&argc);
            if (history) FUNC12(line);
            if (historyfile) FUNC14(historyfile);

            if (argv == NULL) {
                FUNC18("Invalid argument(s)\n");
                FUNC7(line);
                continue;
            } else if (argc > 0) {
                if (FUNC25(argv[0],"quit") == 0 ||
                    FUNC25(argv[0],"exit") == 0)
                {
                    FUNC5(0);
                } else if (argc == 3 && !FUNC25(argv[0],"connect")) {
                    FUNC21(config.hostip);
                    config.hostip = FUNC23(argv[1]);
                    config.hostport = FUNC0(argv[2]);
                    FUNC3();
                    FUNC1(1);
                } else if (argc == 1 && !FUNC25(argv[0],"clear")) {
                    FUNC11();
                } else {
                    long long start_time = FUNC17(), elapsed;
                    int repeat, skipargs = 0;

                    repeat = FUNC0(argv[0]);
                    if (argc > 1 && repeat) {
                        skipargs = 1;
                    } else {
                        repeat = 1;
                    }

                    while (1) {
                        config.cluster_reissue_command = 0;
                        if (FUNC4(argc-skipargs,argv+skipargs,repeat)
                            != REDIS_OK)
                        {
                            FUNC1(1);

                            /* If we still cannot send the command print error.
                             * We'll try to reconnect the next time. */
                            if (FUNC4(argc-skipargs,argv+skipargs,repeat)
                                != REDIS_OK)
                                FUNC2();
                        }
                        /* Issue the command again if we got redirected in cluster mode */
                        if (config.cluster_mode && config.cluster_reissue_command) {
                            FUNC1(1);
                        } else {
                            break;
                        }
                    }
                    elapsed = FUNC17()-start_time;
                    if (elapsed >= 500) {
                        FUNC18("(%.2fs)\n",(double)elapsed/1000);
                    }
                }
            }
            /* Free the argument vector */
            FUNC22(argv,argc);
        }
        /* linenoise() returns malloc-ed lines like readline() */
        FUNC7(line);
    }
    FUNC5(0);
}