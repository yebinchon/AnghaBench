
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int timer_begin; int timer_end; } ;
typedef TYPE_1__ rarch_timer_t ;


 int rarch_timer_begin_new_time (TYPE_1__*,int ) ;

void rarch_timer_begin(rarch_timer_t *timer, uint64_t sec)
{
   if (!timer)
      return;
   rarch_timer_begin_new_time(timer, sec);
   timer->timer_begin = 1;
   timer->timer_end = 0;
}
