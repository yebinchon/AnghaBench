
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int hours; unsigned int minutes; unsigned int seconds; } ;
struct TYPE_5__ {TYPE_1__ runtime; } ;
typedef TYPE_2__ runtime_log_t ;
typedef scalar_t__ retro_time_t ;


 int runtime_log_convert_hms2usec (unsigned int,unsigned int,unsigned int,scalar_t__*) ;
 int runtime_log_convert_usec2hms (scalar_t__,unsigned int*,unsigned int*,unsigned int*) ;

void runtime_log_add_runtime_hms(runtime_log_t *runtime_log, unsigned hours, unsigned minutes, unsigned seconds)
{
   retro_time_t usec_old;
   retro_time_t usec_new;

   if (!runtime_log)
      return;

   runtime_log_convert_hms2usec(
         runtime_log->runtime.hours, runtime_log->runtime.minutes, runtime_log->runtime.seconds,
         &usec_old);

   runtime_log_convert_hms2usec(hours, minutes, seconds, &usec_new);

   runtime_log_convert_usec2hms(usec_old + usec_new,
         &runtime_log->runtime.hours, &runtime_log->runtime.minutes, &runtime_log->runtime.seconds);
}
