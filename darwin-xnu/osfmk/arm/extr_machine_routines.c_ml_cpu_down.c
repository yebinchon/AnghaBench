
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cpu_running; } ;
typedef TYPE_1__ cpu_data_t ;
struct TYPE_5__ {int logical_cpu; int physical_cpu; } ;


 int FALSE ;
 int TRUE ;
 int cpu_signal_handler_internal (int ) ;
 TYPE_1__* getCpuDatap () ;
 int hw_atomic_sub (int *,int) ;
 TYPE_2__ machine_info ;

void
ml_cpu_down(void)
{
 cpu_data_t *cpu_data_ptr;

 hw_atomic_sub(&machine_info.physical_cpu, 1);
 hw_atomic_sub(&machine_info.logical_cpu, 1);
 cpu_data_ptr = getCpuDatap();
 cpu_data_ptr->cpu_running = FALSE;

 cpu_signal_handler_internal(TRUE);
}
