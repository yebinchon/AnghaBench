
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef TYPE_2__* vm_object_t ;
typedef int vm_object_offset_t ;
typedef int upl_t ;
typedef scalar_t__ upl_size_t ;
typedef int ppnum_t ;
typedef int memory_object_t ;
typedef scalar_t__ memory_object_offset_t ;
typedef scalar_t__ kern_return_t ;
typedef TYPE_3__* device_pager_t ;
struct TYPE_8__ {int mo_control; } ;
struct TYPE_10__ {TYPE_1__ dev_pgr_hdr; } ;
struct TYPE_9__ {int phys_contiguous; } ;


 TYPE_3__* DEVICE_PAGER_NULL ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 int UPL_CLEAN_IN_PLACE ;
 int UPL_NO_SYNC ;
 int VM_KERN_MEMORY_NONE ;
 int assert (int) ;
 TYPE_3__* device_pager_lookup (int ) ;
 scalar_t__ memory_object_control_to_vm_object (int ) ;
 int panic (char*) ;
 int upl_commit (int ,int *,int ) ;
 int upl_deallocate (int ) ;
 scalar_t__ vm_object_populate_with_private (TYPE_2__*,scalar_t__,int ,scalar_t__) ;
 scalar_t__ vm_object_upl_request (TYPE_2__*,int ,scalar_t__,int *,int *,unsigned int*,int,int ) ;

kern_return_t
device_pager_populate_object(
 memory_object_t device,
 memory_object_offset_t offset,
 ppnum_t page_num,
 vm_size_t size)
{
 device_pager_t device_object;
 vm_object_t vm_object;
 kern_return_t kr;
 upl_t upl;

 device_object = device_pager_lookup(device);
 if(device_object == DEVICE_PAGER_NULL)
  return KERN_FAILURE;

 vm_object = (vm_object_t)memory_object_control_to_vm_object(
     device_object->dev_pgr_hdr.mo_control);
 if(vm_object == ((void*)0))
  return KERN_FAILURE;

 kr = vm_object_populate_with_private(
    vm_object, offset, page_num, size);
 if(kr != KERN_SUCCESS)
  return kr;

 if(!vm_object->phys_contiguous) {
  unsigned int null_size = 0;
  assert((upl_size_t) size == size);
         kr = vm_object_upl_request(vm_object,
        (vm_object_offset_t)offset,
        (upl_size_t) size, &upl, ((void*)0),
        &null_size,
        (UPL_NO_SYNC | UPL_CLEAN_IN_PLACE),
        VM_KERN_MEMORY_NONE);
  if(kr != KERN_SUCCESS)
   panic("device_pager_populate_object: list_req failed");

  upl_commit(upl, ((void*)0), 0);
  upl_deallocate(upl);
 }


 return kr;
}
