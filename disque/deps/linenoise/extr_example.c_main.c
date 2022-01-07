
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int completion ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 char* linenoise (char*) ;
 int linenoiseHistoryAdd (char*) ;
 int linenoiseHistoryLoad (char*) ;
 int linenoiseHistorySave (char*) ;
 int linenoiseHistorySetMaxLen (int) ;
 int linenoisePrintKeyCodes () ;
 int linenoiseSetCompletionCallback (int ) ;
 int linenoiseSetMultiLine (int) ;
 int printf (char*,...) ;
 int stderr ;
 int strcmp (char*,char*) ;
 int strncmp (char*,char*,int) ;

int main(int argc, char **argv) {
    char *line;
    char *prgname = argv[0];


    while(argc > 1) {
        argc--;
        argv++;
        if (!strcmp(*argv,"--multiline")) {
            linenoiseSetMultiLine(1);
            printf("Multi-line mode enabled.\n");
        } else if (!strcmp(*argv,"--keycodes")) {
            linenoisePrintKeyCodes();
            exit(0);
        } else {
            fprintf(stderr, "Usage: %s [--multiline] [--keycodes]\n", prgname);
            exit(1);
        }
    }



    linenoiseSetCompletionCallback(completion);



    linenoiseHistoryLoad("history.txt");







    while((line = linenoise("hello> ")) != ((void*)0)) {

        if (line[0] != '\0' && line[0] != '/') {
            printf("echo: '%s'\n", line);
            linenoiseHistoryAdd(line);
            linenoiseHistorySave("history.txt");
        } else if (!strncmp(line,"/historylen",11)) {

            int len = atoi(line+11);
            linenoiseHistorySetMaxLen(len);
        } else if (line[0] == '/') {
            printf("Unreconized command: %s\n", line);
        }
        free(line);
    }
    return 0;
}
