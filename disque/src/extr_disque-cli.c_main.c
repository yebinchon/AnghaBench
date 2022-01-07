
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hostport; int repeat; int interval; int last_cmd_type; int * eval; scalar_t__ intrinsic_latency_mode; scalar_t__ scan_mode; scalar_t__ stat_mode; scalar_t__ bigkeys; scalar_t__ pipe_mode; scalar_t__ getrdb_mode; scalar_t__ slave_mode; scalar_t__ latency_mode; void* mb_delim; int output; int * auth; scalar_t__ stdinarg; int pipe_timeout; int * rdb_filename; int * pattern; scalar_t__ cluster_mode; scalar_t__ latency_history; scalar_t__ pubsub_mode; scalar_t__ monitor_mode; scalar_t__ shutdown; scalar_t__ interactive; scalar_t__ dbnum; int * hostsocket; void* hostip; } ;


 int DISQUE_CLI_DEFAULT_PIPE_TIMEOUT ;
 int OUTPUT_RAW ;
 int OUTPUT_STANDARD ;
 scalar_t__ REDIS_ERR ;
 scalar_t__ REDIS_OK ;
 int SIGPIPE ;
 int SIG_IGN ;
 scalar_t__ cliConnect (int ) ;
 int cliInitHelp () ;
 TYPE_1__ config ;
 int convertToSds (int,char**) ;
 int evalMode (int,char**) ;
 int exit (int) ;
 int fileno (int ) ;
 int findBigKeys () ;
 int getRDB () ;
 int * getenv (char*) ;
 int intrinsicLatencyMode () ;
 int isatty (int ) ;
 int latencyMode () ;
 int noninteractive (int,int ) ;
 int parseOptions (int,char**) ;
 int pipeMode () ;
 int repl () ;
 int scanMode () ;
 void* sdsnew (char*) ;
 int signal (int ,int ) ;
 int slaveMode () ;
 int statMode () ;
 int stdout ;

int main(int argc, char **argv) {
    int firstarg;

    config.hostip = sdsnew("127.0.0.1");
    config.hostport = 7711;
    config.hostsocket = ((void*)0);
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
    config.pattern = ((void*)0);
    config.rdb_filename = ((void*)0);
    config.pipe_mode = 0;
    config.pipe_timeout = DISQUE_CLI_DEFAULT_PIPE_TIMEOUT;
    config.bigkeys = 0;
    config.stdinarg = 0;
    config.auth = ((void*)0);
    config.eval = ((void*)0);
    config.last_cmd_type = -1;

    if (!isatty(fileno(stdout)) && (getenv("FAKETTY") == ((void*)0)))
        config.output = OUTPUT_RAW;
    else
        config.output = OUTPUT_STANDARD;
    config.mb_delim = sdsnew("\n");
    cliInitHelp();

    firstarg = parseOptions(argc,argv);
    argc -= firstarg;
    argv += firstarg;

    signal(SIGPIPE, SIG_IGN);


    if (config.latency_mode) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        latencyMode();
    }


    if (config.slave_mode) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        slaveMode();
    }


    if (config.getrdb_mode) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        getRDB();
    }


    if (config.pipe_mode) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        pipeMode();
    }


    if (config.bigkeys) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        findBigKeys();
    }


    if (config.stat_mode) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        if (config.interval == 0) config.interval = 1000000;
        statMode();
    }


    if (config.scan_mode) {
        if (cliConnect(0) == REDIS_ERR) exit(1);
        scanMode();
    }


    if (config.intrinsic_latency_mode) intrinsicLatencyMode();


    if (argc == 0 && !config.eval) {


        cliConnect(0);
        repl();
    }


    if (cliConnect(0) != REDIS_OK) exit(1);
    if (config.eval) {
        return evalMode(argc,argv);
    } else {
        return noninteractive(argc,convertToSds(argc,argv));
    }
}
