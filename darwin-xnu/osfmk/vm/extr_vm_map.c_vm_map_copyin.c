
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_t ;
typedef int vm_map_size_t ;
typedef int vm_map_copy_t ;
typedef int vm_map_address_t ;
typedef int kern_return_t ;
typedef int boolean_t ;


 int FALSE ;
 int vm_map_copyin_common (int ,int ,int ,int ,int ,int *,int ) ;

kern_return_t
vm_map_copyin(
 vm_map_t src_map,
 vm_map_address_t src_addr,
 vm_map_size_t len,
 boolean_t src_destroy,
 vm_map_copy_t *copy_result)
{
 return(vm_map_copyin_common(src_map, src_addr, len, src_destroy,
     FALSE, copy_result, FALSE));
}
