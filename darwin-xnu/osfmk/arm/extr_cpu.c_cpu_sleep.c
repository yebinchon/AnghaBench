
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_3__ {int cpu_id; int * cpu_user_debug; int cpu_flags; scalar_t__ cpu_reset_handler; int cpu_active_thread; } ;
typedef TYPE_1__ cpu_data_t ;


 int CleanPoC_Dcache () ;
 int PE_cpu_machine_quiesce (int ) ;
 int SleepState ;
 int current_thread () ;
 TYPE_1__* getCpuDatap () ;
 int kernel_pmap ;
 int pmap_switch_user_ttb (int ) ;
 scalar_t__ start_cpu_paddr ;

void
cpu_sleep(void)
{
 cpu_data_t *cpu_data_ptr = getCpuDatap();
 pmap_switch_user_ttb(kernel_pmap);
 cpu_data_ptr->cpu_active_thread = current_thread();
 cpu_data_ptr->cpu_reset_handler = (vm_offset_t) start_cpu_paddr;
 cpu_data_ptr->cpu_flags |= SleepState;
 cpu_data_ptr->cpu_user_debug = ((void*)0);

 CleanPoC_Dcache();

 PE_cpu_machine_quiesce(cpu_data_ptr->cpu_id);

}
