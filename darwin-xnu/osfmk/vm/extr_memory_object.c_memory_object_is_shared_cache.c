
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef int memory_object_control_t ;
typedef int boolean_t ;
struct TYPE_4__ {int object_is_shared_cache; } ;


 int FALSE ;
 TYPE_1__* VM_OBJECT_NULL ;
 TYPE_1__* memory_object_control_to_vm_object (int ) ;

boolean_t
memory_object_is_shared_cache(
 memory_object_control_t control)
{
 vm_object_t object = VM_OBJECT_NULL;

 object = memory_object_control_to_vm_object(control);
 if (object == VM_OBJECT_NULL)
  return FALSE;

 return object->object_is_shared_cache;
}
