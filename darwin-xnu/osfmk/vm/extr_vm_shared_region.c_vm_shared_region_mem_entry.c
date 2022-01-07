
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_shared_region_t ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_6__ {int sr_ref_count; struct TYPE_6__* sr_mem_entry; } ;


 int SHARED_REGION_TRACE_DEBUG (char*) ;
 scalar_t__ VM_KERNEL_ADDRPERM (TYPE_1__*) ;
 int assert (int) ;

ipc_port_t
vm_shared_region_mem_entry(
 vm_shared_region_t shared_region)
{
 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: -> mem_entry(%p)\n",
   (void *)VM_KERNEL_ADDRPERM(shared_region)));
 assert(shared_region->sr_ref_count > 1);
 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: mem_entry(%p) <- %p\n",
   (void *)VM_KERNEL_ADDRPERM(shared_region),
   (void *)VM_KERNEL_ADDRPERM(shared_region->sr_mem_entry)));
 return shared_region->sr_mem_entry;
}
