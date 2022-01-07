
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_object_t ;
typedef int uint32_t ;
typedef int memory_object_offset_t ;
typedef int memory_object_control_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 scalar_t__ VM_OBJECT_NULL ;
 scalar_t__ memory_object_control_to_vm_object (int ) ;
 int vm_object_range_op (scalar_t__,int ,int ,int,int *) ;

kern_return_t
memory_object_range_op(
 memory_object_control_t control,
 memory_object_offset_t offset_beg,
 memory_object_offset_t offset_end,
 int ops,
 int *range)
{
 vm_object_t object;

 object = memory_object_control_to_vm_object(control);
 if (object == VM_OBJECT_NULL)
  return (KERN_INVALID_ARGUMENT);

 return vm_object_range_op(object,
      offset_beg,
      offset_end,
      ops,
      (uint32_t *) range);
}
