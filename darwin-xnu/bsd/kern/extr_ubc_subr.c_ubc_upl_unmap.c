
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int upl_t ;
typedef int kern_return_t ;


 int kernel_map ;
 int vm_upl_unmap (int ,int ) ;

kern_return_t
ubc_upl_unmap(
 upl_t upl)
{
 return(vm_upl_unmap(kernel_map, upl));
}
