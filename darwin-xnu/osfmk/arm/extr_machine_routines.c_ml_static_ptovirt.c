
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int phystokv (int ) ;

vm_offset_t
ml_static_ptovirt(
    vm_offset_t paddr)
{
 return phystokv(paddr);
}
