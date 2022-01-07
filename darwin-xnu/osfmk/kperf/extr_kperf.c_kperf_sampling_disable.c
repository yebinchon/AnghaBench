
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KPERF_SAMPLING_OFF ;
 scalar_t__ KPERF_SAMPLING_ON ;
 scalar_t__ KPERF_SAMPLING_SHUTDOWN ;
 int kperf_lightweight_pet_active_update () ;
 int kperf_timer_stop () ;
 scalar_t__ sampling_status ;

int
kperf_sampling_disable(void)
{
 if (sampling_status != KPERF_SAMPLING_ON) {
  return 0;
 }


 sampling_status = KPERF_SAMPLING_SHUTDOWN;


 kperf_timer_stop();


 sampling_status = KPERF_SAMPLING_OFF;
 kperf_lightweight_pet_active_update();

 return 0;
}
