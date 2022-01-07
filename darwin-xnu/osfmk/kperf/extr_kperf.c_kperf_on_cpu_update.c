
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kperf_kdebug_cswitch ;
 scalar_t__ kperf_lazy_wait_action ;
 scalar_t__ kperf_lightweight_pet_active ;
 int kperf_on_cpu_active ;

void
kperf_on_cpu_update(void)
{
 kperf_on_cpu_active = kperf_kdebug_cswitch ||
                       kperf_lightweight_pet_active ||
                       kperf_lazy_wait_action != 0;
}
