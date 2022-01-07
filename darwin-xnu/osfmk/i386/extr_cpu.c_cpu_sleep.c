
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpu_id; } ;
typedef TYPE_1__ cpu_data_t ;


 int PE_cpu_machine_quiesce (int ) ;
 int cpu_thread_halt () ;
 TYPE_1__* current_cpu_datap () ;

void
cpu_sleep(void)
{
 cpu_data_t *cdp = current_cpu_datap();

 PE_cpu_machine_quiesce(cdp->cpu_id);

 cpu_thread_halt();
}
