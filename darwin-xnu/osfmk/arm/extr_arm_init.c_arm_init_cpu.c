
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cpu_CLW_active; int cpu_number; TYPE_1__* cpu_processor; int rtcPop; int cpu_active_thread; int cpu_flags; } ;
typedef TYPE_2__ cpu_data_t ;
struct TYPE_5__ {int cpu_id; } ;


 TYPE_2__ BootCpuData ;
 int DAIFSC_ASYNCF ;
 int EndOfAllTime ;
 int FALSE ;
 int PE_arm_debug_enable_trace () ;
 int PE_init_platform (int ,int *) ;
 int SCTLR_PREDIC ;
 int SleepState ;
 int TRUE ;
 int __builtin_arm_wsr (char*,int) ;
 int arm64_stall_sleep ;
 int arm_diag ;
 int bootprofile_wake_from_sleep () ;
 int commpage_update_timebase () ;
 int cpu_defeatures_set (int) ;
 int cpu_init () ;
 int cpu_machine_idle_init (int ) ;
 int cpu_timebase_init (int ) ;
 int cpus_defeatures ;
 int fiq_context_init (int ) ;
 int flush_mmu_tlb () ;
 int get_mmu_control () ;
 int kprintf (char*,int ) ;
 int machine_set_current_thread (int ) ;
 int mt_wake_per_core () ;
 int pmap_clear_user_ttb () ;
 int serial_init () ;
 int set_mmu_control (int) ;
 int slave_main (int *) ;
 int timer_resync_deadlines () ;

void
arm_init_cpu(
 cpu_data_t *cpu_data_ptr)
{




 cpu_data_ptr->cpu_flags &= ~SleepState;




 machine_set_current_thread(cpu_data_ptr->cpu_active_thread);
 cpu_machine_idle_init(FALSE);

 cpu_init();
 cpu_timebase_init(FALSE);

 if (cpu_data_ptr == &BootCpuData) {







  serial_init();
  PE_init_platform(TRUE, ((void*)0));
  commpage_update_timebase();
 }

 fiq_context_init(TRUE);
 cpu_data_ptr->rtcPop = EndOfAllTime;
 timer_resync_deadlines();





 kprintf("arm_cpu_init(): cpu %d online\n", cpu_data_ptr->cpu_processor->cpu_id);

 if (cpu_data_ptr == &BootCpuData) {



 }





 slave_main(((void*)0));
}
