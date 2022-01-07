
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_tag_t ;
typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int vm_map_t ;
typedef int kern_return_t ;


 int KMA_KOBJECT ;
 int kernel_memory_allocate (int ,int *,int,int,int ,int ) ;
 int panic (char*) ;

kern_return_t
kmem_alloc_aligned(
 vm_map_t map,
 vm_offset_t *addrp,
 vm_size_t size,
 vm_tag_t tag)
{
 if ((size & (size - 1)) != 0)
  panic("kmem_alloc_aligned: size not aligned");
 return kernel_memory_allocate(map, addrp, size, size - 1, KMA_KOBJECT, tag);
}
