
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {scalar_t__ period; int actionid; } ;


 int kperf_pet_config (int ) ;
 int kperf_timer_schedule (TYPE_1__*,int ) ;
 size_t kperf_timerc ;
 TYPE_1__* kperf_timerv ;
 int mach_absolute_time () ;
 size_t pet_timer_id ;

void
kperf_timer_go(void)
{

 if (pet_timer_id < kperf_timerc) {
  kperf_pet_config(kperf_timerv[pet_timer_id].actionid);
 }

 uint64_t now = mach_absolute_time();

 for (unsigned int i = 0; i < kperf_timerc; i++) {
  if (kperf_timerv[i].period == 0) {
   continue;
  }

  kperf_timer_schedule(&(kperf_timerv[i]), now);
 }
}
