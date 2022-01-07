
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timer_end; int timer_begin; scalar_t__ timeout_end; } ;
typedef TYPE_1__ rarch_timer_t ;



void rarch_timer_end(rarch_timer_t *timer)
{
   if (!timer)
      return;
   timer->timer_end = 1;
   timer->timer_begin = 0;
   timer->timeout_end = 0;
}
