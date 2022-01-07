
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpcdata {int counterc; int running; int configv; scalar_t__ configc; int counterv; int curcpu; } ;


 int BUF_INFO (int,int,...) ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int PERF_KPC_CPU_SAMPLE ;
 int kpc_get_config (int ,int ) ;
 scalar_t__ kpc_get_config_count (int ) ;
 int kpc_get_cpu_counters (int ,int ,int *,int ) ;
 int kpc_get_running () ;

void
kperf_kpc_cpu_sample(struct kpcdata *kpcd, int sample_config)
{
 BUF_INFO(PERF_KPC_CPU_SAMPLE | DBG_FUNC_START, sample_config);

 kpcd->running = kpc_get_running();
 kpcd->counterc = kpc_get_cpu_counters(0, kpcd->running,
                                       &kpcd->curcpu,
                                       kpcd->counterv);
 if (!sample_config) {
  kpcd->configc = 0;
 } else {
  kpcd->configc = kpc_get_config_count(kpcd->running);
  kpc_get_config(kpcd->running, kpcd->configv);
 }

 BUF_INFO(PERF_KPC_CPU_SAMPLE | DBG_FUNC_END, kpcd->running, kpcd->counterc);
}
