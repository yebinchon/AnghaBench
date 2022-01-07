
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int seconds; int minutes; int hours; } ;
struct TYPE_5__ {TYPE_1__ runtime; } ;
typedef TYPE_2__ runtime_log_t ;
typedef int retro_time_t ;


 int runtime_log_convert_usec2hms (int ,int *,int *,int *) ;

void runtime_log_set_runtime_usec(runtime_log_t *runtime_log, retro_time_t usec)
{
   if (!runtime_log)
      return;

   runtime_log_convert_usec2hms(usec,
         &runtime_log->runtime.hours, &runtime_log->runtime.minutes, &runtime_log->runtime.seconds);
}
