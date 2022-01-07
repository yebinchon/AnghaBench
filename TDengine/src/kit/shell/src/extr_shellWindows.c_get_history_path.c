
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* HISTORY_FILE ;
 int sprintf (char*,char*,char*,char*) ;

void get_history_path(char *history) { sprintf(history, "%s/%s", ".", HISTORY_FILE); }
