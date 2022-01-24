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
struct TYPE_2__ {int shutdown; int monitor_mode; int pubsub_mode; int slave_mode; scalar_t__ output; scalar_t__ interval; int /*<<< orphan*/  dbnum; } ;

/* Variables and functions */
 scalar_t__ OUTPUT_RAW ; 
 int REDIS_ERR ; 
 int REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/ * context ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (size_t*) ; 
 size_t* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char const**,size_t*) ; 
 size_t FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 

__attribute__((used)) static int FUNC15(int argc, char **argv, int repeat) {
    char *command = argv[0];
    size_t *argvlen;
    int j, output_raw;

    if (!FUNC13(command,"help") || !FUNC13(command,"?")) {
        FUNC1(--argc, ++argv);
        return REDIS_OK;
    }

    if (context == NULL) return REDIS_ERR;

    output_raw = 0;
    if (!FUNC13(command,"info") ||
        (argc == 2 && !FUNC13(command,"cluster") &&
                      (!FUNC13(argv[1],"nodes") ||
                       !FUNC13(argv[1],"info"))) ||
        (argc == 2 && !FUNC13(command,"client") &&
                       !FUNC13(argv[1],"list")) ||
        (argc == 3 && !FUNC13(command,"latency") &&
                       !FUNC13(argv[1],"graph")) ||
        (argc == 2 && !FUNC13(command,"latency") &&
                       !FUNC13(argv[1],"doctor")))
    {
        output_raw = 1;
    }

    if (!FUNC13(command,"shutdown")) config.shutdown = 1;
    if (!FUNC13(command,"monitor")) config.monitor_mode = 1;
    if (!FUNC13(command,"subscribe") ||
        !FUNC13(command,"psubscribe")) config.pubsub_mode = 1;
    if (!FUNC13(command,"sync") ||
        !FUNC13(command,"psync")) config.slave_mode = 1;

    /* Setup argument length */
    argvlen = FUNC8(argc*sizeof(size_t));
    for (j = 0; j < argc; j++)
        argvlen[j] = FUNC11(argv[j]);

    while(repeat--) {
        FUNC10(context,argc,(const char**)argv,argvlen);
        while (config.monitor_mode) {
            if (FUNC2(output_raw) != REDIS_OK) FUNC5(1);
            FUNC6(stdout);
        }

        if (config.pubsub_mode) {
            if (config.output != OUTPUT_RAW)
                FUNC9("Reading messages... (press Ctrl-C to quit)\n");
            while (1) {
                if (FUNC2(output_raw) != REDIS_OK) FUNC5(1);
            }
        }

        if (config.slave_mode) {
            FUNC9("Entering slave output mode...  (press Ctrl-C to quit)\n");
            FUNC12();
            config.slave_mode = 0;
            FUNC7(argvlen);
            return REDIS_ERR;  /* Error = slaveMode lost connection to master */
        }

        if (FUNC2(output_raw) != REDIS_OK) {
            FUNC7(argvlen);
            return REDIS_ERR;
        } else {
            /* Store database number when SELECT was successfully executed. */
            if (!FUNC13(command,"select") && argc == 2) {
                config.dbnum = FUNC0(argv[1]);
                FUNC3();
            } else if (!FUNC13(command,"auth") && argc == 2) {
                FUNC4();
            }
        }
        if (config.interval) FUNC14(config.interval);
        FUNC6(stdout); /* Make it grep friendly */
    }

    FUNC7(argvlen);
    return REDIS_OK;
}