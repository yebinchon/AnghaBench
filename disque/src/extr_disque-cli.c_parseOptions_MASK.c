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
typedef  char* sds ;
struct TYPE_2__ {char* hostip; int stdinarg; char* hostsocket; double interval; char* auth; int latency_mode; int latency_history; int slave_mode; int stat_mode; int scan_mode; char* pattern; int intrinsic_latency_mode; int getrdb_mode; char* rdb_filename; int pipe_mode; int bigkeys; char* eval; int cluster_mode; char* mb_delim; void* pipe_timeout; void* intrinsic_latency_duration; int /*<<< orphan*/  output; void* dbnum; int /*<<< orphan*/  repeat; void* hostport; } ;

/* Variables and functions */
 int /*<<< orphan*/  OUTPUT_CSV ; 
 int /*<<< orphan*/  OUTPUT_RAW ; 
 int /*<<< orphan*/  OUTPUT_STANDARD ; 
 double FUNC0 (char*) ; 
 void* FUNC1 (char*) ; 
 char* FUNC2 () ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 void* FUNC7 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(int argc, char **argv) {
    int i;

    for (i = 1; i < argc; i++) {
        int lastarg = i==argc-1;

        if (!FUNC8(argv[i],"-h") && !lastarg) {
            FUNC6(config.hostip);
            config.hostip = FUNC7(argv[++i]);
        } else if (!FUNC8(argv[i],"-h") && lastarg) {
            FUNC10();
        } else if (!FUNC8(argv[i],"--help")) {
            FUNC10();
        } else if (!FUNC8(argv[i],"-x")) {
            config.stdinarg = 1;
        } else if (!FUNC8(argv[i],"-p") && !lastarg) {
            config.hostport = FUNC1(argv[++i]);
        } else if (!FUNC8(argv[i],"-s") && !lastarg) {
            config.hostsocket = argv[++i];
        } else if (!FUNC8(argv[i],"-r") && !lastarg) {
            config.repeat = FUNC9(argv[++i],NULL,10);
        } else if (!FUNC8(argv[i],"-i") && !lastarg) {
            double seconds = FUNC0(argv[++i]);
            config.interval = seconds*1000000;
        } else if (!FUNC8(argv[i],"-n") && !lastarg) {
            config.dbnum = FUNC1(argv[++i]);
        } else if (!FUNC8(argv[i],"-a") && !lastarg) {
            config.auth = argv[++i];
        } else if (!FUNC8(argv[i],"--raw")) {
            config.output = OUTPUT_RAW;
        } else if (!FUNC8(argv[i],"--no-raw")) {
            config.output = OUTPUT_STANDARD;
        } else if (!FUNC8(argv[i],"--csv")) {
            config.output = OUTPUT_CSV;
        } else if (!FUNC8(argv[i],"--latency")) {
            config.latency_mode = 1;
        } else if (!FUNC8(argv[i],"--latency-history")) {
            config.latency_mode = 1;
            config.latency_history = 1;
        } else if (!FUNC8(argv[i],"--slave")) {
            config.slave_mode = 1;
        } else if (!FUNC8(argv[i],"--stat")) {
            config.stat_mode = 1;
        } else if (!FUNC8(argv[i],"--scan")) {
            config.scan_mode = 1;
        } else if (!FUNC8(argv[i],"--pattern") && !lastarg) {
            config.pattern = argv[++i];
        } else if (!FUNC8(argv[i],"--intrinsic-latency") && !lastarg) {
            config.intrinsic_latency_mode = 1;
            config.intrinsic_latency_duration = FUNC1(argv[++i]);
        } else if (!FUNC8(argv[i],"--rdb") && !lastarg) {
            config.getrdb_mode = 1;
            config.rdb_filename = argv[++i];
        } else if (!FUNC8(argv[i],"--pipe")) {
            config.pipe_mode = 1;
        } else if (!FUNC8(argv[i],"--pipe-timeout") && !lastarg) {
            config.pipe_timeout = FUNC1(argv[++i]);
        } else if (!FUNC8(argv[i],"--bigkeys")) {
            config.bigkeys = 1;
        } else if (!FUNC8(argv[i],"--eval") && !lastarg) {
            config.eval = argv[++i];
        } else if (!FUNC8(argv[i],"-c")) {
            config.cluster_mode = 1;
        } else if (!FUNC8(argv[i],"-d") && !lastarg) {
            FUNC6(config.mb_delim);
            config.mb_delim = FUNC7(argv[++i]);
        } else if (!FUNC8(argv[i],"-v") || !FUNC8(argv[i], "--version")) {
            sds version = FUNC2();
            FUNC5("disque %s\n", version);
            FUNC6(version);
            FUNC3(0);
        } else {
            if (argv[i][0] == '-') {
                FUNC4(stderr,
                    "Unrecognized option or bad number of args for: '%s'\n",
                    argv[i]);
                FUNC3(1);
            } else {
                /* Likely the command name, stop here. */
                break;
            }
        }
    }
    return i;
}