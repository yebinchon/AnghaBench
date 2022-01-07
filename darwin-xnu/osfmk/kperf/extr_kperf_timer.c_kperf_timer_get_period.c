
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int period; } ;


 int EINVAL ;
 unsigned int kperf_timerc ;
 TYPE_1__* kperf_timerv ;

int
kperf_timer_get_period(unsigned int timerid, uint64_t *period_abstime)
{
 if (timerid >= kperf_timerc) {
  return EINVAL;
 }

 *period_abstime = kperf_timerv[timerid].period;
 return 0;
}
