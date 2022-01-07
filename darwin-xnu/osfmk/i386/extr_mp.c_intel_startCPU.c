
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int kern_return_t ;
typedef int boolean_t ;
struct TYPE_5__ {int cpu_running; } ;
struct TYPE_4__ {int target_cpu; int target_lapic; int starter_cpu; } ;


 int DBG (char*,int,int) ;
 int DBGLOG_CPU_INIT (int) ;
 int FALSE ;
 scalar_t__ IdlePTD ;
 int KERN_SUCCESS ;
 int assert (int) ;
 TYPE_2__* cpu_datap (int) ;
 int cpu_desc_init (TYPE_2__*) ;
 int cpu_number () ;
 int* cpu_to_lapic ;
 int delay (int) ;
 int get_cpu_number () ;
 int halt_cpu () ;
 int kprintf (char*,int,...) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int ml_set_interrupts_enabled (int ) ;
 int mp_cpu_boot_lock ;
 int mp_rendezvous_no_intrs (int ,void*) ;
 int printf (char*,int) ;
 int start_cpu ;
 TYPE_1__ start_info ;
 int tsc_entry_barrier ;
 int tsc_exit_barrier ;

kern_return_t
intel_startCPU(
 int slot_num)
{
 int lapic = cpu_to_lapic[slot_num];
 boolean_t istate;

 assert(lapic != -1);

 DBGLOG_CPU_INIT(slot_num);

 DBG("intel_startCPU(%d) lapic_id=%d\n", slot_num, lapic);
 DBG("IdlePTD(%p): 0x%x\n", &IdlePTD, (int) (uintptr_t)IdlePTD);





 cpu_desc_init(cpu_datap(slot_num));


 lck_mtx_lock(&mp_cpu_boot_lock);

 istate = ml_set_interrupts_enabled(FALSE);
 if (slot_num == get_cpu_number()) {
  ml_set_interrupts_enabled(istate);
  lck_mtx_unlock(&mp_cpu_boot_lock);
  return KERN_SUCCESS;
 }

 start_info.starter_cpu = cpu_number();
 start_info.target_cpu = slot_num;
 start_info.target_lapic = lapic;
 tsc_entry_barrier = 2;
 tsc_exit_barrier = 2;






 mp_rendezvous_no_intrs(start_cpu, (void *) &start_info);

 start_info.target_cpu = 0;

 ml_set_interrupts_enabled(istate);
 lck_mtx_unlock(&mp_cpu_boot_lock);

 if (!cpu_datap(slot_num)->cpu_running) {
  kprintf("Failed to start CPU %02d\n", slot_num);
  printf("Failed to start CPU %02d, rebooting...\n", slot_num);
  delay(1000000);
  halt_cpu();
  return KERN_SUCCESS;
 } else {
  kprintf("Started cpu %d (lapic id %08x)\n", slot_num, lapic);
  return KERN_SUCCESS;
 }
}
