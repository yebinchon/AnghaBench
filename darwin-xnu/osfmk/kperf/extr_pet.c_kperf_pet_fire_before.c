
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUF_INFO (int ) ;
 int OSIncrementAtomic (int *) ;
 int PERF_PET_SAMPLE ;
 int kperf_pet_gen ;
 scalar_t__ lightweight_pet ;
 int pet_initted ;
 int pet_running ;

void
kperf_pet_fire_before(void)
{
 if (!pet_initted || !pet_running) {
  return;
 }

 if (lightweight_pet) {
  BUF_INFO(PERF_PET_SAMPLE);
  OSIncrementAtomic(&kperf_pet_gen);
 }
}
