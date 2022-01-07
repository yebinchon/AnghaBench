
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_shared_region_t ;
typedef scalar_t__ mach_vm_size_t ;
struct TYPE_4__ {int sr_ref_count; scalar_t__ sr_size; } ;


 int SHARED_REGION_TRACE_DEBUG (char*) ;
 scalar_t__ VM_KERNEL_ADDRPERM (TYPE_1__*) ;
 int assert (int) ;

mach_vm_size_t
vm_shared_region_size(
 vm_shared_region_t shared_region)
{
 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: -> size(%p)\n",
   (void *)VM_KERNEL_ADDRPERM(shared_region)));
 assert(shared_region->sr_ref_count > 1);
 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: size(%p) <- 0x%llx\n",
   (void *)VM_KERNEL_ADDRPERM(shared_region),
   (long long)shared_region->sr_size));
 return shared_region->sr_size;
}
