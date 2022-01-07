
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ timeout_us; } ;
typedef TYPE_1__ rarch_timer_t ;



bool rarch_timer_has_expired(rarch_timer_t *timer)
{
   if (!timer || timer->timeout_us <= 0)
      return 1;
   return 0;
}
