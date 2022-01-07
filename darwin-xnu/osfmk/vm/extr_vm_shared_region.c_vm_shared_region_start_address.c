
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_shared_region_t ;
typedef scalar_t__ mach_vm_offset_t ;
typedef int kern_return_t ;
struct TYPE_4__ {int sr_ref_count; scalar_t__ sr_base_address; scalar_t__ sr_first_mapping; scalar_t__ sr_mapping_in_progress; } ;


 int KERN_INVALID_ADDRESS ;
 int KERN_SUCCESS ;
 int SHARED_REGION_TRACE_DEBUG (char*) ;
 int THREAD_UNINT ;
 scalar_t__ VM_KERNEL_ADDRPERM (TYPE_1__*) ;
 int assert (int) ;
 int vm_shared_region_lock () ;
 int vm_shared_region_sleep (scalar_t__*,int ) ;
 int vm_shared_region_unlock () ;

kern_return_t
vm_shared_region_start_address(
 vm_shared_region_t shared_region,
 mach_vm_offset_t *start_address)
{
 kern_return_t kr;
 mach_vm_offset_t sr_base_address;
 mach_vm_offset_t sr_first_mapping;

 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: -> start_address(%p)\n",
   (void *)VM_KERNEL_ADDRPERM(shared_region)));
 assert(shared_region->sr_ref_count > 1);

 vm_shared_region_lock();






 while (shared_region->sr_mapping_in_progress) {

  assert(shared_region->sr_ref_count > 1);
  vm_shared_region_sleep(&shared_region->sr_mapping_in_progress,
           THREAD_UNINT);
 }
 assert(! shared_region->sr_mapping_in_progress);
 assert(shared_region->sr_ref_count > 1);

 sr_base_address = shared_region->sr_base_address;
 sr_first_mapping = shared_region->sr_first_mapping;

 if (sr_first_mapping == (mach_vm_offset_t) -1) {

  kr = KERN_INVALID_ADDRESS;
 } else {
  kr = KERN_SUCCESS;
  *start_address = sr_base_address + sr_first_mapping;
 }

 vm_shared_region_unlock();

 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: start_address(%p) <- 0x%llx\n",
   (void *)VM_KERNEL_ADDRPERM(shared_region),
   (long long)shared_region->sr_base_address));

 return kr;
}
