
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timeout_us; } ;
typedef TYPE_1__ rarch_timer_t ;



int rarch_timer_get_timeout(rarch_timer_t *timer)
{
   if (!timer)
      return 0;
   return (int)(timer->timeout_us / 1000000);
}
