
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int kperf_lazy_cpu_time_threshold ;

int
kperf_lazy_set_cpu_time_threshold(uint64_t threshold)
{
 kperf_lazy_cpu_time_threshold = threshold;
 return 0;
}
