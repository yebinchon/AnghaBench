
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * sds ;
struct TYPE_2__ {int interactive; char* prompt; scalar_t__ cluster_reissue_command; scalar_t__ cluster_mode; void* hostport; int hostip; } ;


 scalar_t__ REDIS_OK ;
 void* atoi (int *) ;
 int cliConnect (int) ;
 int cliPrintContextError () ;
 int cliRefreshPrompt () ;
 scalar_t__ cliSendCommand (int,int **,int) ;
 int completionCallback ;
 TYPE_1__ config ;
 scalar_t__ context ;
 int exit (int ) ;
 int fileno (int ) ;
 int free (char*) ;
 int * getenv (char*) ;
 scalar_t__ isatty (int ) ;
 char* linenoise (char*) ;
 int linenoiseClearScreen () ;
 int linenoiseHistoryAdd (char*) ;
 int linenoiseHistoryLoad (int *) ;
 int linenoiseHistorySave (int *) ;
 int linenoiseSetCompletionCallback (int ) ;
 int linenoiseSetMultiLine (int) ;
 long long mstime () ;
 int printf (char*,...) ;
 int * sdscatprintf (int ,char*,int *) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int sdsfreesplitres (int **,int) ;
 int sdsnew (int *) ;
 int ** sdssplitargs (char*,int*) ;
 int stdin ;
 scalar_t__ strcasecmp (int *,char*) ;

__attribute__((used)) static void repl(void) {
    sds historyfile = ((void*)0);
    int history = 0;
    char *line;
    int argc;
    sds *argv;

    config.interactive = 1;
    linenoiseSetMultiLine(1);
    linenoiseSetCompletionCallback(completionCallback);


    if (isatty(fileno(stdin))) {
        history = 1;

        if (getenv("HOME") != ((void*)0)) {
            historyfile = sdscatprintf(sdsempty(),"%s/.disque_history",getenv("HOME"));
            linenoiseHistoryLoad(historyfile);
        }
    }

    cliRefreshPrompt();
    while((line = linenoise(context ? config.prompt : "not connected> ")) != ((void*)0)) {
        if (line[0] != '\0') {
            argv = sdssplitargs(line,&argc);
            if (history) linenoiseHistoryAdd(line);
            if (historyfile) linenoiseHistorySave(historyfile);

            if (argv == ((void*)0)) {
                printf("Invalid argument(s)\n");
                free(line);
                continue;
            } else if (argc > 0) {
                if (strcasecmp(argv[0],"quit") == 0 ||
                    strcasecmp(argv[0],"exit") == 0)
                {
                    exit(0);
                } else if (argc == 3 && !strcasecmp(argv[0],"connect")) {
                    sdsfree(config.hostip);
                    config.hostip = sdsnew(argv[1]);
                    config.hostport = atoi(argv[2]);
                    cliRefreshPrompt();
                    cliConnect(1);
                } else if (argc == 1 && !strcasecmp(argv[0],"clear")) {
                    linenoiseClearScreen();
                } else {
                    long long start_time = mstime(), elapsed;
                    int repeat, skipargs = 0;

                    repeat = atoi(argv[0]);
                    if (argc > 1 && repeat) {
                        skipargs = 1;
                    } else {
                        repeat = 1;
                    }

                    while (1) {
                        config.cluster_reissue_command = 0;
                        if (cliSendCommand(argc-skipargs,argv+skipargs,repeat)
                            != REDIS_OK)
                        {
                            cliConnect(1);



                            if (cliSendCommand(argc-skipargs,argv+skipargs,repeat)
                                != REDIS_OK)
                                cliPrintContextError();
                        }

                        if (config.cluster_mode && config.cluster_reissue_command) {
                            cliConnect(1);
                        } else {
                            break;
                        }
                    }
                    elapsed = mstime()-start_time;
                    if (elapsed >= 500) {
                        printf("(%.2fs)\n",(double)elapsed/1000);
                    }
                }
            }

            sdsfreesplitres(argv,argc);
        }

        free(line);
    }
    exit(0);
}
