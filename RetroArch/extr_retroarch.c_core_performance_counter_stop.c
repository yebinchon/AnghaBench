
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_perf_counter {scalar_t__ start; int total; } ;


 scalar_t__ cpu_features_get_perf_counter () ;
 scalar_t__ runloop_perfcnt_enable ;

__attribute__((used)) static void core_performance_counter_stop(struct retro_perf_counter *perf)
{
   if (runloop_perfcnt_enable)
      perf->total += cpu_features_get_perf_counter() - perf->start;
}
