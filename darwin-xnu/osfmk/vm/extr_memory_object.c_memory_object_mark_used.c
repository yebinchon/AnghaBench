
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_object_t ;
typedef int * memory_object_control_t ;


 scalar_t__ VM_OBJECT_NULL ;
 scalar_t__ memory_object_control_to_vm_object (int *) ;
 int vm_object_cache_remove (scalar_t__) ;

void
memory_object_mark_used(
        memory_object_control_t control)
{
 vm_object_t object;

 if (control == ((void*)0))
  return;

 object = memory_object_control_to_vm_object(control);

 if (object != VM_OBJECT_NULL)
  vm_object_cache_remove(object);
}
