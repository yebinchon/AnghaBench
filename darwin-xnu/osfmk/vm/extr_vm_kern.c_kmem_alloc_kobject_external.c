
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int vm_map_t ;
typedef int kern_return_t ;


 int kmem_alloc_kobject (int ,int *,int ,int ) ;
 int vm_tag_bt () ;

kern_return_t
kmem_alloc_kobject_external(
 vm_map_t map,
 vm_offset_t *addrp,
 vm_size_t size)
{
    return (kmem_alloc_kobject(map, addrp, size, vm_tag_bt()));
}
