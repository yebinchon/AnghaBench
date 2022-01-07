
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef TYPE_4__* thread_t ;
typedef int kern_return_t ;
struct TYPE_7__ {int * cpu_user_pmap; } ;
struct TYPE_11__ {int cpu_id; TYPE_4__* cpu_active_thread; TYPE_2__* cpu_processor; TYPE_1__ cpu_pmap_cpu_data; scalar_t__ cpu_reset_handler; } ;
typedef TYPE_5__ cpu_data_t ;
typedef int cpu_data_entry_t ;
struct TYPE_12__ {TYPE_5__* cpu_data_vaddr; } ;
struct TYPE_9__ {TYPE_5__* CpuDatap; } ;
struct TYPE_10__ {TYPE_3__ machine; } ;
struct TYPE_8__ {scalar_t__ next_thread; TYPE_4__* idle_thread; } ;


 TYPE_6__* CpuDataEntries ;
 int FALSE ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int PE_cpu_start (int ,scalar_t__,scalar_t__) ;
 scalar_t__ THREAD_NULL ;
 int cpu_machine_init () ;
 int cpu_number () ;
 int flush_dcache (scalar_t__,int,int ) ;
 int kprintf (char*,int) ;
 scalar_t__ start_cpu_paddr ;

kern_return_t
cpu_start(int cpu)
{
 kprintf("cpu_start() cpu: %d\n", cpu);
 if (cpu == cpu_number()) {
  cpu_machine_init();
  return KERN_SUCCESS;
 } else {
  return KERN_FAILURE;

 }
}
