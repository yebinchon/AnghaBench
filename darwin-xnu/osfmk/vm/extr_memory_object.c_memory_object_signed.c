
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef int memory_object_control_t ;
typedef int kern_return_t ;
typedef int boolean_t ;
struct TYPE_6__ {int code_signed; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 TYPE_1__* VM_OBJECT_NULL ;
 TYPE_1__* memory_object_control_to_vm_object (int ) ;
 int vm_object_lock (TYPE_1__*) ;
 int vm_object_unlock (TYPE_1__*) ;

kern_return_t
memory_object_signed(
 memory_object_control_t control,
 boolean_t is_signed)
{
 vm_object_t object;

 object = memory_object_control_to_vm_object(control);
 if (object == VM_OBJECT_NULL)
  return KERN_INVALID_ARGUMENT;

 vm_object_lock(object);
 object->code_signed = is_signed;
 vm_object_unlock(object);

 return KERN_SUCCESS;
}
