
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_t ;
typedef int upl_t ;
typedef int kern_return_t ;


 int vm_upl_unmap (int ,int ) ;

kern_return_t
kernel_upl_unmap(
 vm_map_t map,
 upl_t upl)
{
 return vm_upl_unmap(map, upl);
}
