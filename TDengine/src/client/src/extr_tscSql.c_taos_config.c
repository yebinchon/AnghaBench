
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int logDir ;
 int strcpy (int ,char*) ;
 int uDebugFlag ;

void taos_config(int debug, char *log_path) {
  uDebugFlag = debug;
  strcpy(logDir, log_path);
}
