
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef int memory_object_control_t ;
typedef int kern_return_t ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ resident_page_count; } ;


 int FALSE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int TRUE ;
 TYPE_1__* VM_OBJECT_NULL ;
 TYPE_1__* memory_object_control_to_vm_object (int ) ;

kern_return_t
memory_object_pages_resident(
 memory_object_control_t control,
 boolean_t * has_pages_resident)
{
 vm_object_t object;

 *has_pages_resident = FALSE;

 object = memory_object_control_to_vm_object(control);
 if (object == VM_OBJECT_NULL)
  return (KERN_INVALID_ARGUMENT);

 if (object->resident_page_count)
  *has_pages_resident = TRUE;

 return (KERN_SUCCESS);
}
