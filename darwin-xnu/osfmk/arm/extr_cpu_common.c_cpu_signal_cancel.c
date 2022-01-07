
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cpu_signal; int cpu_id; } ;
typedef TYPE_1__ cpu_data_t ;
struct TYPE_5__ {int cpu_id; } ;


 int PE_cpu_signal_cancel (int ,int ) ;
 int SIGPdisabled ;
 TYPE_2__* getCpuDatap () ;

void
cpu_signal_cancel(cpu_data_t *target_proc)
{

 if (!(target_proc->cpu_signal & SIGPdisabled)) {
  PE_cpu_signal_cancel(getCpuDatap()->cpu_id, target_proc->cpu_id);
 }
}
