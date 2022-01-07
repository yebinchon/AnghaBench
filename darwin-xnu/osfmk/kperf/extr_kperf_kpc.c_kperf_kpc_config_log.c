
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpcdata {int configc; int counterc; int running; } ;


 int BUF_DATA (int ,int ,int ,int ,int ) ;
 int KPC_CLASS_FIXED_MASK ;
 int PERF_KPC_CONFIG ;
 int kpc_get_counter_count (int ) ;

__attribute__((used)) static void
kperf_kpc_config_log(const struct kpcdata *kpcd)
{
 BUF_DATA(PERF_KPC_CONFIG,
          kpcd->running,
          kpcd->counterc,
          kpc_get_counter_count(KPC_CLASS_FIXED_MASK),
          kpcd->configc);
}
