
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int nsmep ;
typedef int nsmap ;
struct TYPE_5__ {scalar_t__ cpu_fixed_pmcs_enabled; int cpu_task_map; void* cpu_tlb_invalid; int cpu_active_cr3; int cpu_kernel_cr3; int cpu_number; } ;
typedef TYPE_1__ cpu_data_t ;
typedef void* boolean_t ;
struct TYPE_7__ {int cpu_kernel_cr3; } ;
struct TYPE_6__ {int pm_cr3; } ;


 int CPUID_LEAF7_FEATURE_SMAP ;
 int CPUID_LEAF7_FEATURE_SMEP ;
 int CR4_PGE ;
 int CR4_SMAP ;
 int CR4_SMEP ;
 void* FALSE ;
 scalar_t__ PE_parse_boot_argn (char*,void**,int) ;
 int TASK_MAP_64BIT ;
 void* TRUE ;
 int cpu_pmc_control (void**) ;
 TYPE_4__* cpu_shadowp (int ) ;
 int cpuid_leaf7_features () ;
 TYPE_1__* current_cpu_datap () ;
 int get_cr4 () ;
 TYPE_2__* kernel_pmap ;
 int pmap_pcid_configure () ;
 void* pmap_smap_enabled ;
 void* pmap_smep_enabled ;
 int set_cr4 (int) ;

void
pmap_cpu_init(void)
{
 cpu_data_t *cdp = current_cpu_datap();

 set_cr4(get_cr4() | CR4_PGE);




 cdp->cpu_kernel_cr3 = kernel_pmap->pm_cr3;
 cpu_shadowp(cdp->cpu_number)->cpu_kernel_cr3 = cdp->cpu_kernel_cr3;
 cdp->cpu_active_cr3 = kernel_pmap->pm_cr3;
 cdp->cpu_tlb_invalid = FALSE;
 cdp->cpu_task_map = TASK_MAP_64BIT;

 pmap_pcid_configure();
 if (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_SMEP) {
  pmap_smep_enabled = TRUE;






  if (pmap_smep_enabled) {
   set_cr4(get_cr4() | CR4_SMEP);
  }

 }
 if (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_SMAP) {
  pmap_smap_enabled = TRUE;






  if (pmap_smap_enabled) {
   set_cr4(get_cr4() | CR4_SMAP);
  }
 }


 if (cdp->cpu_fixed_pmcs_enabled) {
  boolean_t enable = TRUE;
  cpu_pmc_control(&enable);
 }

}
