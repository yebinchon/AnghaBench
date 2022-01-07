
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pending_cpus; scalar_t__ actionid; scalar_t__ period; } ;


 int KPERF_PET_DEFAULT_IDLE_RATE ;
 int kperf_set_lightweight_pet (int ) ;
 int kperf_set_pet_idle_rate (int ) ;
 int kperf_timer_set_petid (int) ;
 unsigned int kperf_timerc ;
 TYPE_1__* kperf_timerv ;

void
kperf_timer_reset(void)
{
 kperf_timer_set_petid(999);
 kperf_set_pet_idle_rate(KPERF_PET_DEFAULT_IDLE_RATE);
 kperf_set_lightweight_pet(0);
 for (unsigned int i = 0; i < kperf_timerc; i++) {
  kperf_timerv[i].period = 0;
  kperf_timerv[i].actionid = 0;
  kperf_timerv[i].pending_cpus = 0;
 }
}
