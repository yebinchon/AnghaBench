
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *****) ;
 int ***** history ;
 int history_len ;

void linenoiseHistoryFree(void) {
    if (history) {
        for (int j = 0; j < history_len; j++) {
            free(history[j]);
        }
        free(history);
    }
    history = ((void*)0);
}
