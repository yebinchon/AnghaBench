
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct mt_cpu {int * mtc_snaps; } ;
struct TYPE_3__ {struct mt_cpu cpu_monotonic; } ;
typedef TYPE_1__ cpu_data_t ;


 scalar_t__ FALSE ;
 int MT_CORE_NFIXED ;
 int PMCR0 ;
 int PMCR0_FIXED_EN ;
 int PMCR0_INIT ;
 int __builtin_arm_rsr64 (int ) ;
 int __builtin_arm_wsr64 (int ,int) ;
 int assert (int) ;
 int core_init_execution_modes () ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int mt_core_set_snap (int,int ) ;

void
mt_cpu_run(cpu_data_t *cpu)
{
 uint64_t pmcr0;
 struct mt_cpu *mtc;

 assert(cpu != ((void*)0));
 assert(ml_get_interrupts_enabled() == FALSE);

 mtc = &cpu->cpu_monotonic;

 for (int i = 0; i < MT_CORE_NFIXED; i++) {
  mt_core_set_snap(i, mtc->mtc_snaps[i]);
 }


 core_init_execution_modes();

 pmcr0 = __builtin_arm_rsr64(PMCR0);
 pmcr0 |= PMCR0_INIT | PMCR0_FIXED_EN;
 __builtin_arm_wsr64(PMCR0, pmcr0);
}
