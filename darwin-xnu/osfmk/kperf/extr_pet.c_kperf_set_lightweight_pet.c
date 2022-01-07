
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 scalar_t__ KPERF_SAMPLING_ON ;
 int kperf_lightweight_pet_active_update () ;
 scalar_t__ kperf_sampling_status () ;
 int lightweight_pet ;

int
kperf_set_lightweight_pet(int val)
{
 if (kperf_sampling_status() == KPERF_SAMPLING_ON) {
  return EBUSY;
 }

 lightweight_pet = (val == 1);
 kperf_lightweight_pet_active_update();

 return 0;
}
