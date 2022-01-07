
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RARCH_CTL_IS_PERFCNT_ENABLE ;
 int RARCH_LOG (char*) ;
 int log_counters (int ,int ) ;
 int perf_counters_rarch ;
 int perf_ptr_rarch ;
 int rarch_ctl (int ,int *) ;

void rarch_perf_log(void)
{
   if (!rarch_ctl(RARCH_CTL_IS_PERFCNT_ENABLE, ((void*)0)))
      return;

   RARCH_LOG("[PERF]: Performance counters (RetroArch):\n");
   log_counters(perf_counters_rarch, perf_ptr_rarch);
}
