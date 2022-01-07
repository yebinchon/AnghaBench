
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char** history ;
 int history_len ;
 int history_max_len ;
 char** malloc (int) ;
 int memmove (char**,char**,int) ;
 int memset (char**,int ,int) ;
 int strcmp (char*,char const*) ;
 char* strdup (char const*) ;

int linenoiseHistoryAdd(const char *line) {
    char *linecopy;

    if (history_max_len == 0) return 0;


    if (history == ((void*)0)) {
        history = malloc(sizeof(char*)*history_max_len);
        if (history == ((void*)0)) return 0;
        memset(history,0,(sizeof(char*)*history_max_len));
    }


    if (history_len && !strcmp(history[history_len-1], line)) return 0;



    linecopy = strdup(line);
    if (!linecopy) return 0;
    if (history_len == history_max_len) {
        free(history[0]);
        memmove(history,history+1,sizeof(char*)*(history_max_len-1));
        history_len--;
    }
    history[history_len] = linecopy;
    history_len++;
    return 1;
}
