
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 scalar_t__ gPhysBase ;
 scalar_t__ gVirtBase ;
 scalar_t__ ml_static_vtop (scalar_t__) ;
 scalar_t__ vm_kernel_slide ;

vm_offset_t
ml_static_unslide(
 vm_offset_t vaddr)
{
 return (ml_static_vtop(vaddr) - gPhysBase + gVirtBase - vm_kernel_slide) ;
}
