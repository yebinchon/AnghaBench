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
struct TYPE_2__ {int hostport; int repeat; int interval; int last_cmd_type; int /*<<< orphan*/ * eval; scalar_t__ intrinsic_latency_mode; scalar_t__ scan_mode; scalar_t__ stat_mode; scalar_t__ bigkeys; scalar_t__ pipe_mode; scalar_t__ getrdb_mode; scalar_t__ slave_mode; scalar_t__ latency_mode; void* mb_delim; int /*<<< orphan*/  output; int /*<<< orphan*/ * auth; scalar_t__ stdinarg; int /*<<< orphan*/  pipe_timeout; int /*<<< orphan*/ * rdb_filename; int /*<<< orphan*/ * pattern; scalar_t__ cluster_mode; scalar_t__ latency_history; scalar_t__ pubsub_mode; scalar_t__ monitor_mode; scalar_t__ shutdown; scalar_t__ interactive; scalar_t__ dbnum; int /*<<< orphan*/ * hostsocket; void* hostip; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISQUE_CLI_DEFAULT_PIPE_TIMEOUT ; 
 int /*<<< orphan*/  OUTPUT_RAW ; 
 int /*<<< orphan*/  OUTPUT_STANDARD ; 
 scalar_t__ REDIS_ERR ; 
 scalar_t__ REDIS_OK ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 int FUNC3 (int,char**) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int,char**) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 void* FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  stdout ; 

int FUNC21(int argc, char **argv) {
    int firstarg;

    config.hostip = FUNC17("127.0.0.1");
    config.hostport = 7711;
    config.hostsocket = NULL;
    config.repeat = 1;
    config.interval = 0;
    config.dbnum = 0;
    config.interactive = 0;
    config.shutdown = 0;
    config.monitor_mode = 0;
    config.pubsub_mode = 0;
    config.latency_mode = 0;
    config.latency_history = 0;
    config.cluster_mode = 0;
    config.slave_mode = 0;
    config.getrdb_mode = 0;
    config.stat_mode = 0;
    config.scan_mode = 0;
    config.intrinsic_latency_mode = 0;
    config.pattern = NULL;
    config.rdb_filename = NULL;
    config.pipe_mode = 0;
    config.pipe_timeout = DISQUE_CLI_DEFAULT_PIPE_TIMEOUT;
    config.bigkeys = 0;
    config.stdinarg = 0;
    config.auth = NULL;
    config.eval = NULL;
    config.last_cmd_type = -1;

    if (!FUNC10(FUNC5(stdout)) && (FUNC8("FAKETTY") == NULL))
        config.output = OUTPUT_RAW;
    else
        config.output = OUTPUT_STANDARD;
    config.mb_delim = FUNC17("\n");
    FUNC1();

    firstarg = FUNC13(argc,argv);
    argc -= firstarg;
    argv += firstarg;

    FUNC18(SIGPIPE, SIG_IGN);

    /* Latency mode */
    if (config.latency_mode) {
        if (FUNC0(0) == REDIS_ERR) FUNC4(1);
        FUNC11();
    }

    /* Slave mode */
    if (config.slave_mode) {
        if (FUNC0(0) == REDIS_ERR) FUNC4(1);
        FUNC19();
    }

    /* Get RDB mode. */
    if (config.getrdb_mode) {
        if (FUNC0(0) == REDIS_ERR) FUNC4(1);
        FUNC7();
    }

    /* Pipe mode */
    if (config.pipe_mode) {
        if (FUNC0(0) == REDIS_ERR) FUNC4(1);
        FUNC14();
    }

    /* Find big keys */
    if (config.bigkeys) {
        if (FUNC0(0) == REDIS_ERR) FUNC4(1);
        FUNC6();
    }

    /* Stat mode */
    if (config.stat_mode) {
        if (FUNC0(0) == REDIS_ERR) FUNC4(1);
        if (config.interval == 0) config.interval = 1000000;
        FUNC20();
    }

    /* Scan mode */
    if (config.scan_mode) {
        if (FUNC0(0) == REDIS_ERR) FUNC4(1);
        FUNC16();
    }

    /* Intrinsic latency mode */
    if (config.intrinsic_latency_mode) FUNC9();

    /* Start interactive mode when no command is provided */
    if (argc == 0 && !config.eval) {
        /* Note that in repl mode we don't abort on connection error.
         * A new attempt will be performed for every command send. */
        FUNC0(0);
        FUNC15();
    }

    /* Otherwise, we have some arguments to execute */
    if (FUNC0(0) != REDIS_OK) FUNC4(1);
    if (config.eval) {
        return FUNC3(argc,argv);
    } else {
        return FUNC12(argc,FUNC2(argc,argv));
    }
}