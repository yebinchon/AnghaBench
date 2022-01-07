
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ current; scalar_t__ timeout_end; scalar_t__ timeout_us; } ;
typedef TYPE_1__ rarch_timer_t ;


 scalar_t__ cpu_features_get_time_usec () ;

void rarch_timer_tick(rarch_timer_t *timer)
{
   if (!timer)
      return;
   timer->current = cpu_features_get_time_usec();
   timer->timeout_us = (timer->timeout_end - timer->current);
}
