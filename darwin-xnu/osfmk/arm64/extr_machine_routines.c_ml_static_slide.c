
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 scalar_t__ gPhysBase ;
 scalar_t__ gVirtBase ;
 scalar_t__ phystokv (scalar_t__) ;
 scalar_t__ vm_kernel_slide ;

vm_offset_t
ml_static_slide(
 vm_offset_t vaddr)
{
 return phystokv(vaddr + vm_kernel_slide - gVirtBase + gPhysBase);
}
