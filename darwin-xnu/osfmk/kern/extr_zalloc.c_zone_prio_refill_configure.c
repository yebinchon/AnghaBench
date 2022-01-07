
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
typedef int vm_size_t ;
typedef int thread_continue_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_4__ {int zone_replenish_thread; int async_prio_refill; int prio_refill_watermark; } ;


 scalar_t__ KERN_SUCCESS ;
 int MAXPRI_KERNEL ;
 int OSMemoryBarrier () ;
 int TRUE ;
 scalar_t__ kernel_thread_start_priority (int ,TYPE_1__*,int ,int *) ;
 int panic (char*,scalar_t__) ;
 int thread_deallocate (int ) ;
 scalar_t__ zone_replenish_thread ;

void
zone_prio_refill_configure(zone_t z, vm_size_t low_water_mark) {
 z->prio_refill_watermark = low_water_mark;

 z->async_prio_refill = TRUE;
 OSMemoryBarrier();
 kern_return_t tres = kernel_thread_start_priority((thread_continue_t)zone_replenish_thread, z, MAXPRI_KERNEL, &z->zone_replenish_thread);

 if (tres != KERN_SUCCESS) {
  panic("zone_prio_refill_configure, thread create: 0x%x", tres);
 }

 thread_deallocate(z->zone_replenish_thread);
}
