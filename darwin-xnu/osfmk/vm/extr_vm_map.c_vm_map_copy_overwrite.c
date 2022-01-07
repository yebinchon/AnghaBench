
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int vm_map_t ;
typedef int vm_map_size_t ;
typedef int vm_map_offset_t ;
typedef TYPE_1__* vm_map_entry_t ;
typedef TYPE_2__* vm_map_copy_t ;
typedef int pmap_t ;
typedef scalar_t__ kern_return_t ;
typedef int boolean_t ;
struct TYPE_28__ {int entries_pageable; } ;
struct TYPE_27__ {scalar_t__ type; int size; int offset; TYPE_3__ cpy_hdr; } ;
struct TYPE_26__ {int vme_start; int vme_end; scalar_t__ is_sub_map; struct TYPE_26__* vme_next; } ;


 int FALSE ;
 scalar_t__ KERN_SUCCESS ;
 int MAX (int ,int) ;
 int MIN (int,int) ;
 int PAGE_MASK ;
 int TRUE ;
 scalar_t__ VM_MAP_COPY_ENTRY_LIST ;
 TYPE_2__* VM_MAP_COPY_NULL ;
 int VM_MAP_COPY_PAGE_MASK (TYPE_2__*) ;
 int VM_MAP_PAGE_MASK (int ) ;
 int assert (int) ;
 TYPE_2__* vm_map_copy_allocate () ;
 int vm_map_copy_clip_end (TYPE_2__*,TYPE_1__*,int) ;
 int vm_map_copy_clip_start (TYPE_2__*,TYPE_1__*,int) ;
 int vm_map_copy_discard (TYPE_2__*) ;
 int vm_map_copy_entry_link (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int vm_map_copy_entry_unlink (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* vm_map_copy_first_entry (TYPE_2__*) ;
 TYPE_1__* vm_map_copy_last_entry (TYPE_2__*) ;
 scalar_t__ vm_map_copy_overwrite_nested (int ,int,TYPE_2__*,int ,int ,int ) ;
 TYPE_1__* vm_map_copy_to_entry (TYPE_2__*) ;
 int vm_map_lock_read (int ) ;
 int vm_map_lookup_entry (int ,int,TYPE_1__**) ;
 int vm_map_page_aligned (int,int) ;
 int vm_map_store_init (TYPE_3__*) ;
 int vm_map_unlock_read (int ) ;

kern_return_t
vm_map_copy_overwrite(
 vm_map_t dst_map,
 vm_map_offset_t dst_addr,
 vm_map_copy_t copy,
 boolean_t interruptible)
{
 vm_map_size_t head_size, tail_size;
 vm_map_copy_t head_copy, tail_copy;
 vm_map_offset_t head_addr, tail_addr;
 vm_map_entry_t entry;
 kern_return_t kr;
 vm_map_offset_t effective_page_mask, effective_page_size;

 head_size = 0;
 tail_size = 0;
 head_copy = ((void*)0);
 tail_copy = ((void*)0);
 head_addr = 0;
 tail_addr = 0;

 if (interruptible ||
     copy == VM_MAP_COPY_NULL ||
     copy->type != VM_MAP_COPY_ENTRY_LIST) {




 blunt_copy:
  return vm_map_copy_overwrite_nested(dst_map,
          dst_addr,
          copy,
          interruptible,
          (pmap_t) ((void*)0),
          TRUE);
 }

 effective_page_mask = MAX(VM_MAP_PAGE_MASK(dst_map), PAGE_MASK);
 effective_page_mask = MAX(VM_MAP_COPY_PAGE_MASK(copy),
      effective_page_mask);
 effective_page_size = effective_page_mask + 1;

 if (copy->size < 3 * effective_page_size) {



  goto blunt_copy;
 }

 if ((dst_addr & effective_page_mask) !=
     (copy->offset & effective_page_mask)) {



  goto blunt_copy;
 }






 if (!vm_map_page_aligned(dst_addr, effective_page_mask)) {
  head_addr = dst_addr;
  head_size = (effective_page_size -
        (copy->offset & effective_page_mask));
  head_size = MIN(head_size, copy->size);
 }
 if (!vm_map_page_aligned(copy->offset + copy->size,
      effective_page_mask)) {





  tail_size = ((copy->offset + copy->size) &
        effective_page_mask);
  tail_size = MIN(tail_size, copy->size);
  tail_addr = dst_addr + copy->size - tail_size;
  assert(tail_addr >= head_addr + head_size);
 }
 assert(head_size + tail_size <= copy->size);

 if (head_size + tail_size == copy->size) {



  goto blunt_copy;
 }







 vm_map_lock_read(dst_map);
 if (! vm_map_lookup_entry(dst_map, dst_addr, &entry)) {
  vm_map_unlock_read(dst_map);
  goto blunt_copy;
 }
 for (;
      (entry != vm_map_copy_to_entry(copy) &&
       entry->vme_start < dst_addr + copy->size);
      entry = entry->vme_next) {
  if (entry->is_sub_map) {
   vm_map_unlock_read(dst_map);
   goto blunt_copy;
  }
 }
 vm_map_unlock_read(dst_map);

 if (head_size) {
  head_copy = vm_map_copy_allocate();
  head_copy->type = VM_MAP_COPY_ENTRY_LIST;
  head_copy->cpy_hdr.entries_pageable =
   copy->cpy_hdr.entries_pageable;
  vm_map_store_init(&head_copy->cpy_hdr);

  entry = vm_map_copy_first_entry(copy);
  if (entry->vme_end < copy->offset + head_size) {
   head_size = entry->vme_end - copy->offset;
  }

  head_copy->offset = copy->offset;
  head_copy->size = head_size;
  copy->offset += head_size;
  copy->size -= head_size;

  vm_map_copy_clip_end(copy, entry, copy->offset);
  vm_map_copy_entry_unlink(copy, entry);
  vm_map_copy_entry_link(head_copy,
           vm_map_copy_to_entry(head_copy),
           entry);




  kr = vm_map_copy_overwrite_nested(dst_map,
        head_addr,
        head_copy,
        interruptible,
        (pmap_t) ((void*)0),
        FALSE);
  if (kr != KERN_SUCCESS)
   goto done;
 }

 if (tail_size) {



  tail_copy = vm_map_copy_allocate();
  tail_copy->type = VM_MAP_COPY_ENTRY_LIST;
  tail_copy->cpy_hdr.entries_pageable =
   copy->cpy_hdr.entries_pageable;
  vm_map_store_init(&tail_copy->cpy_hdr);

  tail_copy->offset = copy->offset + copy->size - tail_size;
  tail_copy->size = tail_size;

  copy->size -= tail_size;

  entry = vm_map_copy_last_entry(copy);
  vm_map_copy_clip_start(copy, entry, tail_copy->offset);
  entry = vm_map_copy_last_entry(copy);
  vm_map_copy_entry_unlink(copy, entry);
  vm_map_copy_entry_link(tail_copy,
           vm_map_copy_last_entry(tail_copy),
           entry);
 }




 kr = vm_map_copy_overwrite_nested(dst_map,
       dst_addr + head_size,
       copy,
       interruptible,
       (pmap_t) ((void*)0),
       FALSE);
 if (kr != KERN_SUCCESS) {
  goto done;
 }

 if (tail_size) {
  kr = vm_map_copy_overwrite_nested(dst_map,
        tail_addr,
        tail_copy,
        interruptible,
        (pmap_t) ((void*)0),
        FALSE);
 }

done:
 assert(copy->type == VM_MAP_COPY_ENTRY_LIST);
 if (kr == KERN_SUCCESS) {



  if (head_copy) {
   vm_map_copy_discard(head_copy);
   head_copy = ((void*)0);
  }
  vm_map_copy_discard(copy);
  if (tail_copy) {
   vm_map_copy_discard(tail_copy);
   tail_copy = ((void*)0);
  }
 } else {



  if (head_copy) {
   entry = vm_map_copy_first_entry(head_copy);
   vm_map_copy_entry_unlink(head_copy, entry);
   vm_map_copy_entry_link(copy,
            vm_map_copy_to_entry(copy),
            entry);
   copy->offset -= head_size;
   copy->size += head_size;
   vm_map_copy_discard(head_copy);
   head_copy = ((void*)0);
  }
  if (tail_copy) {
   entry = vm_map_copy_last_entry(tail_copy);
   vm_map_copy_entry_unlink(tail_copy, entry);
   vm_map_copy_entry_link(copy,
            vm_map_copy_last_entry(copy),
            entry);
   copy->size += tail_size;
   vm_map_copy_discard(tail_copy);
   tail_copy = ((void*)0);
  }
 }
 return kr;
}
