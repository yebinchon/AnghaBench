
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timer_begin; } ;
typedef TYPE_1__ rarch_timer_t ;



bool rarch_timer_is_running(rarch_timer_t *timer)
{
   if (!timer)
      return 0;
   return timer->timer_begin;
}
