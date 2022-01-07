
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_STRLOC ;
 int g_critical (char*,int ) ;

int chassis_frontend_init_logdir(char *log_path) {
 if (!log_path) {
  g_critical("%s: Failed to get log directory, please set by --log-path",
    G_STRLOC);
  return -1;
 }

    return 0;
}
