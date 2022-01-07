
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef scalar_t__ vm_map_offset_t ;


 int VM_KERN_MEMORY_IOKIT ;
 scalar_t__ VM_MAP_NULL ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int kasan_notify_address (int ,int ) ;
 scalar_t__ kernel_map ;
 int kmem_alloc_pageable (scalar_t__,int *,scalar_t__,int ) ;
 int pmap_map (int ,scalar_t__,scalar_t__,int,unsigned int) ;
 int pmap_map_bd (int ,scalar_t__,scalar_t__,int,unsigned int) ;
 scalar_t__ round_page (int ) ;
 int virtual_avail ;

vm_offset_t
io_map(vm_map_offset_t phys_addr, vm_size_t size, unsigned int flags)
{
 vm_offset_t start;

 if (kernel_map == VM_MAP_NULL) {



     start = virtual_avail;
     virtual_avail += round_page(size);




     (void) pmap_map_bd(start, phys_addr, phys_addr + round_page(size),
          VM_PROT_READ|VM_PROT_WRITE,
          flags);
 }
 else {
     (void) kmem_alloc_pageable(kernel_map, &start, round_page(size), VM_KERN_MEMORY_IOKIT);
     (void) pmap_map(start, phys_addr, phys_addr + round_page(size),
       VM_PROT_READ|VM_PROT_WRITE,
       flags);
 }
 return (start);
}
