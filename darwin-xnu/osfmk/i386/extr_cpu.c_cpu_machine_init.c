
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* cpu_running; void* cpu_boot_complete; int cpu_id; } ;
typedef TYPE_1__ cpu_data_t ;


 int PE_cpu_machine_init (int ,int) ;
 void* TRUE ;
 TYPE_1__* current_cpu_datap () ;
 int ml_init_interrupt () ;
 int vmx_cpu_init () ;

void
cpu_machine_init(
 void)
{
 cpu_data_t *cdp = current_cpu_datap();

 PE_cpu_machine_init(cdp->cpu_id, !cdp->cpu_boot_complete);
 cdp->cpu_boot_complete = TRUE;
 cdp->cpu_running = TRUE;
 ml_init_interrupt();





}
