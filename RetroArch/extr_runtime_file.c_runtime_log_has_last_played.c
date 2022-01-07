
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ year; scalar_t__ month; scalar_t__ day; scalar_t__ hour; scalar_t__ minute; scalar_t__ second; } ;
struct TYPE_5__ {TYPE_1__ last_played; } ;
typedef TYPE_2__ runtime_log_t ;



bool runtime_log_has_last_played(runtime_log_t *runtime_log)
{
   if (!runtime_log)
      return 0;

   return !((runtime_log->last_played.year == 0) &&
            (runtime_log->last_played.month == 0) &&
            (runtime_log->last_played.day == 0) &&
            (runtime_log->last_played.hour == 0) &&
            (runtime_log->last_played.minute == 0) &&
            (runtime_log->last_played.second == 0));
}
