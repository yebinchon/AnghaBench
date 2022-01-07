
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kperf_lazy_cpu_action ;
 scalar_t__ kperf_lazy_cpu_time_threshold ;
 scalar_t__ kperf_lazy_wait_action ;
 scalar_t__ kperf_lazy_wait_time_threshold ;
 int kperf_on_cpu_update () ;

void
kperf_lazy_reset(void)
{
 kperf_lazy_wait_action = 0;
 kperf_lazy_wait_time_threshold = 0;
 kperf_lazy_cpu_action = 0;
 kperf_lazy_cpu_time_threshold = 0;
 kperf_on_cpu_update();
}
