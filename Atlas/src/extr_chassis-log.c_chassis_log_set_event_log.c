
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event_source_handle; int use_windows_applog; } ;
typedef TYPE_1__ chassis_log ;


 int G_STRLOC ;
 int GetLastError () ;
 int RegisterEventSource (int *,char const*) ;
 int TRUE ;
 int g_critical (char*,int ,int ,int) ;
 int g_return_val_if_fail (int ,int) ;
 int g_strerror (int) ;

int chassis_log_set_event_log(chassis_log *log, const char *app_name) {
 g_return_val_if_fail(log != ((void*)0), -1);
 return -1;

}
