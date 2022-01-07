
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* log_filename; int last_msg; int log_ts_str; scalar_t__ event_source_handle; } ;
typedef TYPE_1__ chassis_log ;


 int DeregisterEventSource (scalar_t__) ;
 int GetLastError () ;
 int TRUE ;
 int chassis_log_close (TYPE_1__*) ;
 int g_critical (char*,int) ;
 int g_free (TYPE_1__*) ;
 int g_string_free (int ,int ) ;

void chassis_log_free(chassis_log *log) {
 if (!log) return;

 chassis_log_close(log);
 g_string_free(log->log_ts_str, TRUE);
 g_string_free(log->last_msg, TRUE);

 if (log->log_filename) g_free(log->log_filename);

 g_free(log);
}
