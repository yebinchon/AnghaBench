
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef int memory_object_control_t ;
typedef int boolean_t ;
struct TYPE_6__ {int code_signed; } ;


 int FALSE ;
 TYPE_1__* VM_OBJECT_NULL ;
 TYPE_1__* memory_object_control_to_vm_object (int ) ;
 int vm_object_lock_shared (TYPE_1__*) ;
 int vm_object_unlock (TYPE_1__*) ;

boolean_t
memory_object_is_signed(
 memory_object_control_t control)
{
 boolean_t is_signed;
 vm_object_t object;

 object = memory_object_control_to_vm_object(control);
 if (object == VM_OBJECT_NULL)
  return FALSE;

 vm_object_lock_shared(object);
 is_signed = object->code_signed;
 vm_object_unlock(object);

 return is_signed;
}
