
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef int vm_map_t ;
typedef scalar_t__ vm_map_size_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_1__* vm_map_copy_t ;
typedef scalar_t__ vm_map_address_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_9__ {int entries_pageable; } ;
struct TYPE_8__ {TYPE_2__ cpy_hdr; scalar_t__ size; scalar_t__ offset; int type; } ;


 int FALSE ;
 scalar_t__ KERN_INVALID_ADDRESS ;
 scalar_t__ KERN_SUCCESS ;
 int PAGE_MASK ;
 int TRUE ;
 int VM_INHERIT_SHARE ;
 int VM_MAP_COPY_ENTRY_LIST ;
 TYPE_1__* VM_MAP_COPY_NULL ;
 int VM_MAP_KERNEL_FLAGS_NONE ;
 TYPE_1__* vm_map_copy_allocate () ;
 int vm_map_copy_discard (TYPE_1__*) ;
 scalar_t__ vm_map_remap_extract (int ,scalar_t__,scalar_t__,int ,TYPE_2__*,int *,int *,int ,int ,int ,int ) ;
 scalar_t__ vm_map_round_page (scalar_t__,int ) ;
 int vm_map_store_init (TYPE_2__*) ;
 scalar_t__ vm_map_trunc_page (scalar_t__,int ) ;

kern_return_t
vm_map_copy_extract(
 vm_map_t src_map,
 vm_map_address_t src_addr,
 vm_map_size_t len,
 vm_map_copy_t *copy_result,
 vm_prot_t *cur_prot,
 vm_prot_t *max_prot)
{
 vm_map_offset_t src_start, src_end;
 vm_map_copy_t copy;
 kern_return_t kr;





 if (len == 0) {
  *copy_result = VM_MAP_COPY_NULL;
  return(KERN_SUCCESS);
 }




 src_end = src_addr + len;
 if (src_end < src_addr)
  return KERN_INVALID_ADDRESS;




 src_start = vm_map_trunc_page(src_addr, PAGE_MASK);
 src_end = vm_map_round_page(src_end, PAGE_MASK);
 copy = vm_map_copy_allocate();
 copy->type = VM_MAP_COPY_ENTRY_LIST;
 copy->cpy_hdr.entries_pageable = TRUE;

 vm_map_store_init(&copy->cpy_hdr);

 copy->offset = 0;
 copy->size = len;

 kr = vm_map_remap_extract(src_map,
      src_addr,
      len,
      FALSE,
      &copy->cpy_hdr,
      cur_prot,
      max_prot,
      VM_INHERIT_SHARE,
      TRUE,
      FALSE,
      VM_MAP_KERNEL_FLAGS_NONE);
 if (kr != KERN_SUCCESS) {
  vm_map_copy_discard(copy);
  return kr;
 }

 *copy_result = copy;
 return KERN_SUCCESS;
}
