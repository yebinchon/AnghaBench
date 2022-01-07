
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpcdata {int dummy; } ;


 int PERF_KPC_DATA ;
 int PERF_KPC_DATA32 ;
 int kperf_kpc_config_log (struct kpcdata const*) ;
 int kperf_kpc_log (int ,int ,struct kpcdata const*) ;

void
kperf_kpc_cpu_log(const struct kpcdata *kpcd)
{
 kperf_kpc_config_log(kpcd);
 kperf_kpc_log(PERF_KPC_DATA, PERF_KPC_DATA32, kpcd);
}
