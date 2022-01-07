
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addr64_t ;


 int kernel_pmap ;
 int pmap_find_phys (int ,int ) ;
 int ptoa_64 (int ) ;

addr64_t
vmx_paddr(void *va)
{
 return (ptoa_64(pmap_find_phys(kernel_pmap, (addr64_t)(uintptr_t)va)));
}
