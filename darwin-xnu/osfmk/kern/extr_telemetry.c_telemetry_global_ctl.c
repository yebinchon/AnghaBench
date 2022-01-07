
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int telemetry_sample_all_tasks ;

void
telemetry_global_ctl(int enable_disable)
{
 if (enable_disable == 1) {
  telemetry_sample_all_tasks = TRUE;
 } else {
  telemetry_sample_all_tasks = FALSE;
 }
}
