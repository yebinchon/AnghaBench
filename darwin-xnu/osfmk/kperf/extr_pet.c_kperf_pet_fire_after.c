
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kperf_timer_pet_rearm (int ) ;
 scalar_t__ lightweight_pet ;
 int pet_action_id ;
 int pet_initted ;
 int pet_running ;
 int thread_wakeup (int *) ;

void
kperf_pet_fire_after(void)
{
 if (!pet_initted || !pet_running) {
  return;
 }

 if (lightweight_pet) {
  kperf_timer_pet_rearm(0);
 } else {
  thread_wakeup(&pet_action_id);
 }
}
