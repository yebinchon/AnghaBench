
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* cpu_running; } ;
typedef TYPE_1__ cpu_data_t ;


 void* TRUE ;
 int assert (int) ;
 TYPE_1__* current_cpu_datap () ;
 int flush_tlb_raw () ;
 int ml_get_interrupts_enabled () ;
 int mp_safe_spin_lock (int *) ;
 int simple_unlock (int *) ;
 int smp_initialized ;
 int started_cpu () ;
 int x86_topo_lock ;

void
i386_activate_cpu(void)
{
 cpu_data_t *cdp = current_cpu_datap();

 assert(!ml_get_interrupts_enabled());

 if (!smp_initialized) {
  cdp->cpu_running = TRUE;
  return;
 }

 mp_safe_spin_lock(&x86_topo_lock);
 cdp->cpu_running = TRUE;
 started_cpu();
 simple_unlock(&x86_topo_lock);
 flush_tlb_raw();
}
