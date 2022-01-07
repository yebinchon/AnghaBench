
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ period; int actionid; } ;


 int kperf_pet_config (int ) ;
 scalar_t__ kperf_timer_min_pet_period_abstime () ;
 unsigned int kperf_timerc ;
 TYPE_1__* kperf_timerv ;
 unsigned int pet_timer_id ;

int
kperf_timer_set_petid(unsigned int timerid)
{
 if (timerid < kperf_timerc) {
  uint64_t min_period;

  min_period = kperf_timer_min_pet_period_abstime();
  if (kperf_timerv[timerid].period < min_period) {
   kperf_timerv[timerid].period = min_period;
  }
  kperf_pet_config(kperf_timerv[timerid].actionid);
 } else {

  kperf_pet_config(0);
 }

 pet_timer_id = timerid;

 return 0;
}
