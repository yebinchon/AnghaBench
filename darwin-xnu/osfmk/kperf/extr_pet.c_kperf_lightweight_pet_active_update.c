
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kperf_lightweight_pet_active ;
 int kperf_on_cpu_update () ;
 scalar_t__ kperf_sampling_status () ;
 scalar_t__ lightweight_pet ;

void
kperf_lightweight_pet_active_update(void)
{
 kperf_lightweight_pet_active = (kperf_sampling_status() && lightweight_pet);
 kperf_on_cpu_update();
}
