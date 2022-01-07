
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef TYPE_1__* vm_map_entry_t ;
typedef TYPE_2__* vm_map_copy_t ;
struct TYPE_18__ {int type; scalar_t__ size; scalar_t__ offset; int cpy_object; } ;
struct TYPE_17__ {int is_sub_map; } ;


 int VME_OBJECT (TYPE_1__*) ;
 int VME_SUBMAP (TYPE_1__*) ;


 TYPE_2__* VM_MAP_COPY_NULL ;

 scalar_t__ cpy_kdata_hdr_sz ;
 int kfree (TYPE_2__*,scalar_t__) ;
 scalar_t__ msg_ool_size_small ;
 int panic (char*,long long,long long) ;
 int vm_map_copy_entry_dispose (TYPE_2__*,TYPE_1__*) ;
 int vm_map_copy_entry_unlink (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* vm_map_copy_first_entry (TYPE_2__*) ;
 TYPE_1__* vm_map_copy_to_entry (TYPE_2__*) ;
 int vm_map_copy_zone ;
 int vm_map_deallocate (int ) ;
 int vm_object_deallocate (int ) ;
 int zfree (int ,TYPE_2__*) ;

void
vm_map_copy_discard(
 vm_map_copy_t copy)
{
 if (copy == VM_MAP_COPY_NULL)
  return;

 switch (copy->type) {
 case 130:
  while (vm_map_copy_first_entry(copy) !=
         vm_map_copy_to_entry(copy)) {
   vm_map_entry_t entry = vm_map_copy_first_entry(copy);

   vm_map_copy_entry_unlink(copy, entry);
   if (entry->is_sub_map) {
    vm_map_deallocate(VME_SUBMAP(entry));
   } else {
    vm_object_deallocate(VME_OBJECT(entry));
   }
   vm_map_copy_entry_dispose(copy, entry);
  }
  break;
        case 128:
  vm_object_deallocate(copy->cpy_object);
  break;
 case 129:






  if (copy->size > msg_ool_size_small || copy->offset)
   panic("Invalid vm_map_copy_t sz:%lld, ofst:%lld",
         (long long)copy->size, (long long)copy->offset);
  kfree(copy, copy->size + cpy_kdata_hdr_sz);
  return;
 }
 zfree(vm_map_copy_zone, copy);
}
