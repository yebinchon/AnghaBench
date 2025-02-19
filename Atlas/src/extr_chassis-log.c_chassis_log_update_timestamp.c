
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct tm {int dummy; } ;
struct TYPE_7__ {scalar_t__ log_ts_resolution; TYPE_3__* log_ts_str; } ;
typedef TYPE_1__ chassis_log ;
struct TYPE_9__ {int allocated_len; int str; int len; } ;
struct TYPE_8__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef TYPE_2__ GTimeVal ;
typedef TYPE_3__ GString ;


 scalar_t__ CHASSIS_RESOLUTION_MS ;
 int g_get_current_time (TYPE_2__*) ;
 int g_string_append_printf (TYPE_3__*,char*,int) ;
 struct tm* localtime (scalar_t__*) ;
 int strftime (int ,int ,char*,struct tm*) ;

__attribute__((used)) static int chassis_log_update_timestamp(chassis_log *log) {
 struct tm *tm;
 GTimeVal tv;
 time_t t;
 GString *s = log->log_ts_str;

 g_get_current_time(&tv);
 t = (time_t) tv.tv_sec;
 tm = localtime(&t);

 s->len = strftime(s->str, s->allocated_len, "%Y-%m-%d %H:%M:%S", tm);
 if (log->log_ts_resolution == CHASSIS_RESOLUTION_MS)
  g_string_append_printf(s, ".%.3d", (int) tv.tv_usec/1000);

 return 0;
}
