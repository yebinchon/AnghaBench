
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* vm_map_copy_t ;
struct TYPE_12__ {void* vme_prev; } ;
struct TYPE_11__ {void* vme_next; } ;
struct TYPE_10__ {scalar_t__ type; int cpy_object; } ;


 scalar_t__ VM_MAP_COPY_ENTRY_LIST ;
 TYPE_1__* VM_MAP_COPY_NULL ;
 scalar_t__ VM_MAP_COPY_OBJECT ;
 int VM_OBJECT_NULL ;
 TYPE_5__* vm_map_copy_first_entry (TYPE_1__*) ;
 TYPE_3__* vm_map_copy_last_entry (TYPE_1__*) ;
 void* vm_map_copy_to_entry (TYPE_1__*) ;
 int vm_map_copy_zone ;
 scalar_t__ zalloc (int ) ;

vm_map_copy_t
vm_map_copy_copy(
 vm_map_copy_t copy)
{
 vm_map_copy_t new_copy;

 if (copy == VM_MAP_COPY_NULL)
  return VM_MAP_COPY_NULL;






 new_copy = (vm_map_copy_t) zalloc(vm_map_copy_zone);
 *new_copy = *copy;

 if (copy->type == VM_MAP_COPY_ENTRY_LIST) {




  vm_map_copy_first_entry(copy)->vme_prev
   = vm_map_copy_to_entry(new_copy);
  vm_map_copy_last_entry(copy)->vme_next
   = vm_map_copy_to_entry(new_copy);
 }





 copy->type = VM_MAP_COPY_OBJECT;
 copy->cpy_object = VM_OBJECT_NULL;




 return new_copy;
}
