
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_map_t ;
typedef int upl_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 scalar_t__ VM_MAP_NULL ;
 int vm_map_remove_upl (scalar_t__,int ) ;

kern_return_t
vm_upl_unmap(
 vm_map_t map,
 upl_t upl)
{
 if (VM_MAP_NULL == map)
  return KERN_INVALID_ARGUMENT;

 return (vm_map_remove_upl(map, upl));
}
