
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vm_shared_region_t ;
typedef TYPE_1__* task_t ;
struct TYPE_9__ {scalar_t__ sr_ref_count; struct TYPE_9__* shared_region; } ;


 int SHARED_REGION_TRACE_DEBUG (char*) ;
 scalar_t__ VM_KERNEL_ADDRPERM (TYPE_1__*) ;
 int assert (int) ;
 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;
 int vm_shared_region_deallocate (TYPE_1__*) ;
 int vm_shared_region_lock () ;
 int vm_shared_region_unlock () ;

void
vm_shared_region_set(
 task_t task,
 vm_shared_region_t new_shared_region)
{
 vm_shared_region_t old_shared_region;

 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: -> set(%p, %p)\n",
   (void *)VM_KERNEL_ADDRPERM(task),
   (void *)VM_KERNEL_ADDRPERM(new_shared_region)));

 task_lock(task);
 vm_shared_region_lock();

 old_shared_region = task->shared_region;
 if (new_shared_region) {
  assert(new_shared_region->sr_ref_count > 0);
 }

 task->shared_region = new_shared_region;

 vm_shared_region_unlock();
 task_unlock(task);

 if (old_shared_region) {
  assert(old_shared_region->sr_ref_count > 0);
  vm_shared_region_deallocate(old_shared_region);
 }

 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: set(%p) <- old=%p new=%p\n",
   (void *)VM_KERNEL_ADDRPERM(task),
   (void *)VM_KERNEL_ADDRPERM(old_shared_region),
   (void *)VM_KERNEL_ADDRPERM(new_shared_region)));
}
