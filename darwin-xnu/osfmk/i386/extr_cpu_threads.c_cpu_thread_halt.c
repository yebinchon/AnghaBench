
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ active_lcpus; } ;
typedef TYPE_2__ x86_core_t ;
struct TYPE_6__ {TYPE_2__* core; } ;
struct TYPE_8__ {TYPE_1__ lcpu; } ;
typedef TYPE_3__ cpu_data_t ;
struct TYPE_9__ {int logical_cpu; int physical_cpu; } ;


 int FALSE ;
 int PM_HALT_NORMAL ;
 TYPE_3__* current_cpu_datap () ;
 TYPE_4__ machine_info ;
 int ml_set_interrupts_enabled (int ) ;
 int mp_safe_spin_lock (int *) ;
 int pmCPUHalt (int ) ;
 int simple_unlock (int *) ;
 int x86_topo_lock ;

__attribute__((noreturn))
void
cpu_thread_halt(void)
{
    x86_core_t *core;
    cpu_data_t *cpup = current_cpu_datap();

    mp_safe_spin_lock(&x86_topo_lock);
    machine_info.logical_cpu -= 1;
    core = cpup->lcpu.core;
    core->active_lcpus -= 1;
    if (core->active_lcpus == 0)
 machine_info.physical_cpu -= 1;
    simple_unlock(&x86_topo_lock);





    ml_set_interrupts_enabled(FALSE);
    while (1) {
 pmCPUHalt(PM_HALT_NORMAL);
    }

}
