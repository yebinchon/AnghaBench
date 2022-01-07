
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int actionid; } ;


 int EINVAL ;
 unsigned int kperf_timerc ;
 TYPE_1__* kperf_timerv ;

int
kperf_timer_get_action(unsigned int timerid, uint32_t *action)
{
 if (timerid >= kperf_timerc) {
  return EINVAL;
 }

 *action = kperf_timerv[timerid].actionid;
 return 0;
}
