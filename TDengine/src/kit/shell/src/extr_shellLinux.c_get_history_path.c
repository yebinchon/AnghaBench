
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* pw_dir; } ;


 char* HISTORY_FILE ;
 TYPE_1__* getpwuid (int ) ;
 int getuid () ;
 int sprintf (char*,char*,char*,char*) ;

void get_history_path(char *history) { sprintf(history, "%s/%s", getpwuid(getuid())->pw_dir, HISTORY_FILE); }
