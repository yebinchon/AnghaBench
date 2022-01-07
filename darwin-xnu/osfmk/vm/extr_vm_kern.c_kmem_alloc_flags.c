
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_tag_t ;
typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int vm_map_t ;
typedef int kern_return_t ;


 int KMEM_ALLOC_CODE ;
 int KMEM_ALLOC_CODE_2 ;
 int TRACE_MACHLEAKS (int ,int ,int ,int ) ;
 int kernel_memory_allocate (int ,int *,int ,int ,int,int ) ;

kern_return_t
kmem_alloc_flags(
 vm_map_t map,
 vm_offset_t *addrp,
 vm_size_t size,
 vm_tag_t tag,
 int flags)
{
 kern_return_t kr = kernel_memory_allocate(map, addrp, size, 0, flags, tag);
 TRACE_MACHLEAKS(KMEM_ALLOC_CODE, KMEM_ALLOC_CODE_2, size, *addrp);
 return kr;
}
