
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log_ts_resolution; } ;
typedef TYPE_1__ chassis_log ;


 int CHASSIS_RESOLUTION_MS ;
 int CHASSIS_RESOLUTION_SEC ;

void chassis_set_logtimestamp_resolution(chassis_log *log, int res) {
 if (log == ((void*)0))
  return;

 if (res == CHASSIS_RESOLUTION_SEC || res == CHASSIS_RESOLUTION_MS)
  log->log_ts_resolution = res;
}
