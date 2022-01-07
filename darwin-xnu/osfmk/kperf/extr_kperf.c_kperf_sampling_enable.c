
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECANCELED ;
 scalar_t__ KPERF_SAMPLING_OFF ;
 scalar_t__ KPERF_SAMPLING_ON ;
 scalar_t__ kperf_action_get_count () ;
 int kperf_initted ;
 int kperf_lightweight_pet_active_update () ;
 int kperf_timer_go () ;
 int panic (char*,scalar_t__) ;
 scalar_t__ sampling_status ;

int
kperf_sampling_enable(void)
{
 if (sampling_status == KPERF_SAMPLING_ON) {
  return 0;
 }

 if (sampling_status != KPERF_SAMPLING_OFF) {
  panic("kperf: sampling was %d when asked to enable", sampling_status);
 }


 if (!kperf_initted || (kperf_action_get_count() == 0)) {
  return ECANCELED;
 }


 sampling_status = KPERF_SAMPLING_ON;
 kperf_lightweight_pet_active_update();


 kperf_timer_go();

 return 0;
}
