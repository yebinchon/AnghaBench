
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shutdown; int monitor_mode; int pubsub_mode; int slave_mode; scalar_t__ output; scalar_t__ interval; int dbnum; } ;


 scalar_t__ OUTPUT_RAW ;
 int REDIS_ERR ;
 int REDIS_OK ;
 int atoi (char*) ;
 int cliOutputHelp (int,char**) ;
 int cliReadReply (int) ;
 int cliRefreshPrompt () ;
 int cliSelect () ;
 TYPE_1__ config ;
 int * context ;
 int exit (int) ;
 int fflush (int ) ;
 int free (size_t*) ;
 size_t* malloc (int) ;
 int printf (char*) ;
 int redisAppendCommandArgv (int *,int,char const**,size_t*) ;
 size_t sdslen (char*) ;
 int slaveMode () ;
 int stdout ;
 int strcasecmp (char*,char*) ;
 int usleep (scalar_t__) ;

__attribute__((used)) static int cliSendCommand(int argc, char **argv, int repeat) {
    char *command = argv[0];
    size_t *argvlen;
    int j, output_raw;

    if (!strcasecmp(command,"help") || !strcasecmp(command,"?")) {
        cliOutputHelp(--argc, ++argv);
        return REDIS_OK;
    }

    if (context == ((void*)0)) return REDIS_ERR;

    output_raw = 0;
    if (!strcasecmp(command,"info") ||
        (argc == 2 && !strcasecmp(command,"cluster") &&
                      (!strcasecmp(argv[1],"nodes") ||
                       !strcasecmp(argv[1],"info"))) ||
        (argc == 2 && !strcasecmp(command,"client") &&
                       !strcasecmp(argv[1],"list")) ||
        (argc == 3 && !strcasecmp(command,"latency") &&
                       !strcasecmp(argv[1],"graph")) ||
        (argc == 2 && !strcasecmp(command,"latency") &&
                       !strcasecmp(argv[1],"doctor")))
    {
        output_raw = 1;
    }

    if (!strcasecmp(command,"shutdown")) config.shutdown = 1;
    if (!strcasecmp(command,"monitor")) config.monitor_mode = 1;
    if (!strcasecmp(command,"subscribe") ||
        !strcasecmp(command,"psubscribe")) config.pubsub_mode = 1;
    if (!strcasecmp(command,"sync") ||
        !strcasecmp(command,"psync")) config.slave_mode = 1;


    argvlen = malloc(argc*sizeof(size_t));
    for (j = 0; j < argc; j++)
        argvlen[j] = sdslen(argv[j]);

    while(repeat--) {
        redisAppendCommandArgv(context,argc,(const char**)argv,argvlen);
        while (config.monitor_mode) {
            if (cliReadReply(output_raw) != REDIS_OK) exit(1);
            fflush(stdout);
        }

        if (config.pubsub_mode) {
            if (config.output != OUTPUT_RAW)
                printf("Reading messages... (press Ctrl-C to quit)\n");
            while (1) {
                if (cliReadReply(output_raw) != REDIS_OK) exit(1);
            }
        }

        if (config.slave_mode) {
            printf("Entering slave output mode...  (press Ctrl-C to quit)\n");
            slaveMode();
            config.slave_mode = 0;
            free(argvlen);
            return REDIS_ERR;
        }

        if (cliReadReply(output_raw) != REDIS_OK) {
            free(argvlen);
            return REDIS_ERR;
        } else {

            if (!strcasecmp(command,"select") && argc == 2) {
                config.dbnum = atoi(argv[1]);
                cliRefreshPrompt();
            } else if (!strcasecmp(command,"auth") && argc == 2) {
                cliSelect();
            }
        }
        if (config.interval) usleep(config.interval);
        fflush(stdout);
    }

    free(argvlen);
    return REDIS_OK;
}
