
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_tag_t ;
typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int vm_map_t ;
typedef int kern_return_t ;


 int kmem_alloc_flags (int ,int *,int ,int ,int ) ;

kern_return_t
kmem_alloc(
 vm_map_t map,
 vm_offset_t *addrp,
 vm_size_t size,
 vm_tag_t tag)
{
 return kmem_alloc_flags(map, addrp, size, tag, 0);
}
