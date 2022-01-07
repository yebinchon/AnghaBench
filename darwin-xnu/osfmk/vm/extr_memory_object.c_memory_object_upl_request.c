
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_object_t ;
typedef int upl_t ;
typedef int upl_size_t ;
typedef int upl_page_info_array_t ;
typedef int upl_control_flags_t ;
typedef int memory_object_offset_t ;
typedef int memory_object_control_t ;
typedef int kern_return_t ;


 int KERN_TERMINATED ;
 scalar_t__ VM_OBJECT_NULL ;
 scalar_t__ memory_object_control_to_vm_object (int ) ;
 int vm_object_upl_request (scalar_t__,int ,int ,int *,int ,unsigned int*,int ,int) ;

kern_return_t
memory_object_upl_request(
 memory_object_control_t control,
 memory_object_offset_t offset,
 upl_size_t size,
 upl_t *upl_ptr,
 upl_page_info_array_t user_page_list,
 unsigned int *page_list_count,
 int cntrl_flags,
 int tag)
{
 vm_object_t object;

 object = memory_object_control_to_vm_object(control);
 if (object == VM_OBJECT_NULL)
  return (KERN_TERMINATED);

 return vm_object_upl_request(object,
         offset,
         size,
         upl_ptr,
         user_page_list,
         page_list_count,
         (upl_control_flags_t)(unsigned int) cntrl_flags,
         tag);
}
