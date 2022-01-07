
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log_ts_resolution; } ;
typedef TYPE_1__ chassis_log ;



int chassis_get_logtimestamp_resolution(chassis_log *log) {
 if (log == ((void*)0))
  return -1;
 return log->log_ts_resolution;
}
