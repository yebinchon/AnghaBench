
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_object_t ;
typedef int vm_object_size_t ;
typedef int vm_object_offset_t ;
typedef TYPE_1__* vm_map_copy_t ;
typedef int kern_return_t ;
struct TYPE_4__ {int size; int offset; int cpy_object; int type; } ;


 int KERN_SUCCESS ;
 int VM_MAP_COPY_OBJECT ;
 TYPE_1__* vm_map_copy_allocate () ;

kern_return_t
vm_map_copyin_object(
 vm_object_t object,
 vm_object_offset_t offset,
 vm_object_size_t size,
 vm_map_copy_t *copy_result)
{
 vm_map_copy_t copy;






 copy = vm_map_copy_allocate();
 copy->type = VM_MAP_COPY_OBJECT;
 copy->cpy_object = object;
 copy->offset = offset;
 copy->size = size;

 *copy_result = copy;
 return(KERN_SUCCESS);
}
