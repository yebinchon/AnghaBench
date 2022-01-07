
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpu_CLW_active; int cpu_number; int cpu_active_thread; } ;
typedef TYPE_1__ cpu_data_t ;


 int DAIFSC_ASYNCF ;
 int FALSE ;
 int SCTLR_PREDIC ;
 int TRUE ;
 int __builtin_arm_wsr (char*,int) ;
 int arm_diag ;
 int cpu_defeatures_set (int) ;
 int cpu_idle_exit (int ) ;
 int cpus_defeatures ;
 int fiq_context_init (int ) ;
 int flush_mmu_tlb () ;
 int get_mmu_control () ;
 int machine_set_current_thread (int ) ;
 int pmap_clear_user_ttb () ;
 int set_mmu_control (int) ;

void __attribute__((noreturn))
arm_init_idle_cpu(
 cpu_data_t *cpu_data_ptr)
{







 machine_set_current_thread(cpu_data_ptr->cpu_active_thread);
 fiq_context_init(FALSE);

 cpu_idle_exit(TRUE);
}
