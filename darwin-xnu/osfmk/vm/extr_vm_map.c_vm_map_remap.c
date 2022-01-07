
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_25__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int vm_tag_t ;
typedef int vm_prot_t ;
typedef TYPE_2__* vm_map_t ;
typedef scalar_t__ vm_map_size_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef int vm_map_kernel_flags_t ;
typedef TYPE_3__* vm_map_entry_t ;
typedef scalar_t__ vm_map_address_t ;
typedef int vm_inherit_t ;
struct TYPE_27__ {TYPE_3__* next; } ;
struct vm_map_header {TYPE_25__ links; } ;
struct pmap_cs_lookup_results {scalar_t__ region_size; scalar_t__ region_start; scalar_t__ base; struct pmap_cs_code_directory* region_cd_entry; } ;
struct pmap_cs_code_directory {int dummy; } ;
typedef scalar_t__ kern_return_t ;
typedef int boolean_t ;
struct TYPE_29__ {scalar_t__ vme_end; int is_sub_map; int map_aligned; int vme_start; scalar_t__ vme_resilient_codesign; void* protection; void* max_protection; struct TYPE_29__* vme_next; } ;
struct TYPE_26__ {int entries_pageable; } ;
struct TYPE_28__ {scalar_t__ disable_vmentry_reuse; scalar_t__ highest_entry_end; scalar_t__ wiring_required; int pmap; int size; int is_nested_map; TYPE_1__ hdr; } ;


 TYPE_3__* CAST_TO_VM_MAP_ENTRY (TYPE_25__*) ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 int PAGE_MASK ;
 int SAVE_HINT_MAP_WRITE (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ TRUE ;
 int VME_OBJECT (TYPE_3__*) ;
 int VME_SUBMAP (TYPE_3__*) ;
 int VM_FLAGS_RESILIENT_CODESIGN ;
 int VM_FLAGS_RETURN_DATA_ADDR ;



 int VM_KERN_MEMORY_MLOCK ;
 TYPE_3__* VM_MAP_ENTRY_NULL ;
 TYPE_2__* VM_MAP_NULL ;
 int VM_MAP_PAGE_MASK (TYPE_2__*) ;
 int VM_PROT_EXECUTE ;
 void* VM_PROT_READ ;
 int _vm_map_entry_dispose (struct vm_map_header*,TYPE_3__*) ;
 int _vm_map_store_entry_unlink (struct vm_map_header*,TYPE_3__*) ;
 int assert (int) ;
 int pmap_cs_lookup (int ,scalar_t__,struct pmap_cs_lookup_results*) ;
 int printf (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,char*) ;
 int vm_map_deallocate (int ) ;
 int vm_map_lock (TYPE_2__*) ;
 scalar_t__ vm_map_remap_extract (TYPE_2__*,scalar_t__,scalar_t__,int ,struct vm_map_header*,int*,int*,int ,int ,int,int ) ;
 scalar_t__ vm_map_remap_range_allocate (TYPE_2__*,scalar_t__*,scalar_t__,scalar_t__,int,int ,int ,TYPE_3__**) ;
 scalar_t__ vm_map_round_page (scalar_t__,int ) ;
 int vm_map_store_entry_link (TYPE_2__*,TYPE_3__*,TYPE_3__*,int ) ;
 scalar_t__ vm_map_trunc_page (scalar_t__,int ) ;
 int vm_map_unlock (TYPE_2__*) ;
 scalar_t__ vm_map_wire_kernel (TYPE_2__*,scalar_t__,scalar_t__,int,int ,scalar_t__) ;
 int vm_object_deallocate (int ) ;

kern_return_t
vm_map_remap(
 vm_map_t target_map,
 vm_map_address_t *address,
 vm_map_size_t size,
 vm_map_offset_t mask,
 int flags,
 vm_map_kernel_flags_t vmk_flags,
 vm_tag_t tag,
 vm_map_t src_map,
 vm_map_offset_t memory_address,
 boolean_t copy,
 vm_prot_t *cur_protection,
 vm_prot_t *max_protection,
 vm_inherit_t inheritance)
{
 kern_return_t result;
 vm_map_entry_t entry;
 vm_map_entry_t insp_entry = VM_MAP_ENTRY_NULL;
 vm_map_entry_t new_entry;
 struct vm_map_header map_header;
 vm_map_offset_t offset_in_mapping;

 if (target_map == VM_MAP_NULL)
  return KERN_INVALID_ARGUMENT;

 switch (inheritance) {
 case 129:
 case 130:
 case 128:
  if (size != 0 && src_map != VM_MAP_NULL)
   break;

 default:
  return KERN_INVALID_ARGUMENT;
 }
 if ((flags & VM_FLAGS_RETURN_DATA_ADDR) != 0) {
  offset_in_mapping = memory_address - vm_map_trunc_page(memory_address, PAGE_MASK);
  size = vm_map_round_page(memory_address + size - vm_map_trunc_page(memory_address, PAGE_MASK), PAGE_MASK);
 } else {
  size = vm_map_round_page(size, PAGE_MASK);
 }
 if (size == 0) {
  return KERN_INVALID_ARGUMENT;
 }

 result = vm_map_remap_extract(src_map, memory_address,
          size, copy, &map_header,
          cur_protection,
          max_protection,
          inheritance,
          target_map->hdr.entries_pageable,
          src_map == target_map,
          vmk_flags);

 if (result != KERN_SUCCESS) {
  return result;
 }





 *address = vm_map_trunc_page(*address,
         VM_MAP_PAGE_MASK(target_map));
 vm_map_lock(target_map);
 result = vm_map_remap_range_allocate(target_map, address, size,
          mask, flags, vmk_flags, tag,
          &insp_entry);

 for (entry = map_header.links.next;
      entry != CAST_TO_VM_MAP_ENTRY(&map_header.links);
      entry = new_entry) {
  new_entry = entry->vme_next;
  _vm_map_store_entry_unlink(&map_header, entry);
  if (result == KERN_SUCCESS) {
   if (flags & VM_FLAGS_RESILIENT_CODESIGN) {

    entry->max_protection = VM_PROT_READ;
    entry->protection = VM_PROT_READ;
    entry->vme_resilient_codesign = TRUE;
   }
   entry->vme_start += *address;
   entry->vme_end += *address;
   assert(!entry->map_aligned);
   vm_map_store_entry_link(target_map, insp_entry, entry,
      vmk_flags);
   insp_entry = entry;
  } else {
   if (!entry->is_sub_map) {
    vm_object_deallocate(VME_OBJECT(entry));
   } else {
    vm_map_deallocate(VME_SUBMAP(entry));
   }
   _vm_map_entry_dispose(&map_header, entry);
  }
 }

 if (flags & VM_FLAGS_RESILIENT_CODESIGN) {
  *cur_protection = VM_PROT_READ;
  *max_protection = VM_PROT_READ;
 }

 if( target_map->disable_vmentry_reuse == TRUE) {
  assert(!target_map->is_nested_map);
  if( target_map->highest_entry_end < insp_entry->vme_end ){
   target_map->highest_entry_end = insp_entry->vme_end;
  }
 }

 if (result == KERN_SUCCESS) {
  target_map->size += size;
  SAVE_HINT_MAP_WRITE(target_map, insp_entry);
 }
 vm_map_unlock(target_map);

 if (result == KERN_SUCCESS && target_map->wiring_required)
  result = vm_map_wire_kernel(target_map, *address,
         *address + size, *cur_protection, VM_KERN_MEMORY_MLOCK,
         TRUE);





 if ((flags & VM_FLAGS_RETURN_DATA_ADDR) != 0) {
  *address += offset_in_mapping;
 }

 return result;
}
