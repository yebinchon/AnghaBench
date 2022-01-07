
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ period; } ;


 int EINVAL ;
 scalar_t__ kperf_timer_min_period_abstime () ;
 scalar_t__ kperf_timer_min_pet_period_abstime () ;
 unsigned int kperf_timerc ;
 TYPE_1__* kperf_timerv ;
 unsigned int pet_timer_id ;

int
kperf_timer_set_period(unsigned int timerid, uint64_t period_abstime)
{
 uint64_t min_period;

 if (timerid >= kperf_timerc) {
  return EINVAL;
 }

 if (pet_timer_id == timerid) {
  min_period = kperf_timer_min_pet_period_abstime();
 } else {
  min_period = kperf_timer_min_period_abstime();
 }

 if (period_abstime > 0 && period_abstime < min_period) {
  period_abstime = min_period;
 }

 kperf_timerv[timerid].period = period_abstime;



 return 0;
}
