
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ period; int tcall; scalar_t__ active; } ;


 int kperf_pet_config (int ) ;
 unsigned int kperf_timerc ;
 TYPE_1__* kperf_timerv ;
 int timer_call_cancel (int *) ;

void
kperf_timer_stop(void)
{
 for (unsigned int i = 0; i < kperf_timerc; i++) {
  if (kperf_timerv[i].period == 0) {
   continue;
  }


  while (kperf_timerv[i].active);

  timer_call_cancel(&kperf_timerv[i].tcall);
 }


 kperf_pet_config(0);
}
