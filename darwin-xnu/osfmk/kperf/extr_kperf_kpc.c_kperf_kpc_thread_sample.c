
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kpcdata {int counterc; int running; int configv; scalar_t__ configc; int counterv; } ;


 int BUF_INFO (int,int,...) ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int KPC_MAX_COUNTERS ;
 int PERF_KPC_THREAD_SAMPLE ;
 int kpc_get_config (int ,int ) ;
 scalar_t__ kpc_get_config_count (int ) ;
 scalar_t__ kpc_get_curthread_counters (int*,int ) ;
 int kpc_get_running () ;
 int memset (int ,int ,int) ;

void
kperf_kpc_thread_sample(struct kpcdata *kpcd, int sample_config)
{
 BUF_INFO(PERF_KPC_THREAD_SAMPLE | DBG_FUNC_START, sample_config);

 kpcd->running = kpc_get_running();

 kpcd->counterc = KPC_MAX_COUNTERS;
 if (kpc_get_curthread_counters(&kpcd->counterc,
                                kpcd->counterv)) {

  memset(kpcd->counterv, 0,
         sizeof(uint64_t) * kpcd->counterc);
 }

 if (!sample_config) {
  kpcd->configc = 0;
 } else {
  kpcd->configc = kpc_get_config_count(kpcd->running);
  kpc_get_config(kpcd->running, kpcd->configv);
 }

 BUF_INFO(PERF_KPC_THREAD_SAMPLE | DBG_FUNC_END, kpcd->running, kpcd->counterc);
}
