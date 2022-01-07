
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_perf_counter {int registered; } ;


 scalar_t__ MAX_COUNTERS ;
 int RARCH_CTL_IS_PERFCNT_ENABLE ;
 struct retro_perf_counter** perf_counters_rarch ;
 scalar_t__ perf_ptr_rarch ;
 int rarch_ctl (int ,int *) ;

void rarch_perf_register(struct retro_perf_counter *perf)
{
   if (
            !rarch_ctl(RARCH_CTL_IS_PERFCNT_ENABLE, ((void*)0))
         || perf->registered
         || perf_ptr_rarch >= MAX_COUNTERS
      )
      return;

   perf_counters_rarch[perf_ptr_rarch++] = perf;
   perf->registered = 1;
}
