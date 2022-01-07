
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int i386_intr_func_t ;
struct TYPE_4__ {int version; } ;
struct TYPE_5__ {TYPE_1__ cpuid_arch_perf_leaf; } ;
typedef TYPE_2__ i386_cpu_info_t ;


 TYPE_2__* cpuid_info () ;
 int lapic_set_pmi_func (int ) ;
 int mt_core_supported ;
 scalar_t__ mt_pmi_x86_64 ;

void
mt_early_init(void)
{
 i386_cpu_info_t *info = cpuid_info();
 if (info->cpuid_arch_perf_leaf.version >= 2) {
  lapic_set_pmi_func((i386_intr_func_t)mt_pmi_x86_64);
  mt_core_supported = 1;
 }
}
