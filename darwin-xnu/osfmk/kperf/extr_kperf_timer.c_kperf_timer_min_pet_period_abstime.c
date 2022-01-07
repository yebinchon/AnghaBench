
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ ktrace_background_active () ;
 int min_period_pet_abstime ;
 int min_period_pet_bg_abstime ;

__attribute__((used)) static uint64_t
kperf_timer_min_pet_period_abstime(void)
{
 if (ktrace_background_active()) {
  return min_period_pet_bg_abstime;
 } else {
  return min_period_pet_abstime;
 }
}
