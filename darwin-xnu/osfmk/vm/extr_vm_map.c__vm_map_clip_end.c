
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_1__* vm_map_entry_t ;
struct vm_map_header {int entries_pageable; } ;
struct TYPE_12__ {scalar_t__ vme_start; scalar_t__ vme_end; scalar_t__ is_sub_map; scalar_t__ map_aligned; } ;


 int VME_OBJECT (TYPE_1__*) ;
 scalar_t__ VME_OFFSET (TYPE_1__*) ;
 int VME_OFFSET_SET (TYPE_1__*,scalar_t__) ;
 int VME_SUBMAP (TYPE_1__*) ;
 int VM_MAP_HDR_PAGE_MASK (struct vm_map_header*) ;
 int VM_MAP_PAGE_ALIGNED (scalar_t__,int ) ;
 TYPE_1__* _vm_map_entry_create (struct vm_map_header*,int) ;
 int _vm_map_store_entry_link (struct vm_map_header*,TYPE_1__*,TYPE_1__*) ;
 int assert (int) ;
 int vm_map_entry_copy_full (TYPE_1__*,TYPE_1__*) ;
 int vm_map_reference (int ) ;
 int vm_object_reference (int ) ;

__attribute__((used)) static void
_vm_map_clip_end(
 struct vm_map_header *map_header,
 vm_map_entry_t entry,
 vm_map_offset_t end)
{
 vm_map_entry_t new_entry;






 if (entry->map_aligned) {
  assert(VM_MAP_PAGE_ALIGNED(end,
        VM_MAP_HDR_PAGE_MASK(map_header)));
 }

 new_entry = _vm_map_entry_create(map_header, !map_header->entries_pageable);
 vm_map_entry_copy_full(new_entry, entry);

 assert(entry->vme_start < end);
 new_entry->vme_start = entry->vme_end = end;
 VME_OFFSET_SET(new_entry,
         VME_OFFSET(new_entry) + (end - entry->vme_start));
 assert(new_entry->vme_start < new_entry->vme_end);

 _vm_map_store_entry_link(map_header, entry, new_entry);

 if (entry->is_sub_map)
  vm_map_reference(VME_SUBMAP(new_entry));
 else
  vm_object_reference(VME_OBJECT(new_entry));
}
