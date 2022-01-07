
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int vm_map_offset_t ;


 int PAGE_MASK ;
 int PMAP_MAP_BD_WCOMB ;
 int VM_KERN_MEMORY_IOKIT ;
 scalar_t__ VM_MAP_NULL ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 unsigned int VM_WIMG_IO ;
 unsigned int VM_WIMG_WCOMB ;
 int assert (int) ;
 int kasan_notify_address (int,int) ;
 scalar_t__ kernel_map ;
 int kmem_alloc_pageable (scalar_t__,int*,int,int ) ;
 int pmap_map (int,int,int,int,unsigned int) ;
 int pmap_map_bd (int,int,int,int) ;
 int pmap_map_bd_with_options (int,int,int,int,int ) ;
 int round_page (int) ;
 int virtual_space_start ;

vm_offset_t
io_map(vm_map_offset_t phys_addr, vm_size_t size, unsigned int flags)
{
 vm_offset_t start, start_offset;

 start_offset = phys_addr & PAGE_MASK;
 size += start_offset;
 phys_addr -= start_offset;

 if (kernel_map == VM_MAP_NULL) {



  start = virtual_space_start;
  virtual_space_start += round_page(size);

  assert(flags == VM_WIMG_WCOMB || flags == VM_WIMG_IO);

  if (flags == VM_WIMG_WCOMB) {
   (void) pmap_map_bd_with_options(start, phys_addr, phys_addr + round_page(size),
       VM_PROT_READ | VM_PROT_WRITE, PMAP_MAP_BD_WCOMB);
  } else {
   (void) pmap_map_bd(start, phys_addr, phys_addr + round_page(size),
       VM_PROT_READ | VM_PROT_WRITE);
  }
 } else {
  (void) kmem_alloc_pageable(kernel_map, &start, round_page(size), VM_KERN_MEMORY_IOKIT);
  (void) pmap_map(start, phys_addr, phys_addr + round_page(size),
    VM_PROT_READ | VM_PROT_WRITE, flags);
 }



 return (start + start_offset);
}
