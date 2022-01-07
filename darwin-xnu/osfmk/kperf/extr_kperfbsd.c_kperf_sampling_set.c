
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int kperf_sampling_disable () ;
 int kperf_sampling_enable () ;

__attribute__((used)) static int
kperf_sampling_set(uint32_t sample_start)
{
 if (sample_start) {
  return kperf_sampling_enable();
 } else {
  return kperf_sampling_disable();
 }
}
