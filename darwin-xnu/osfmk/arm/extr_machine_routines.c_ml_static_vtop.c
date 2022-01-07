
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ vm_address_t ;
typedef scalar_t__ vaddr ;


 scalar_t__ gPhysBase ;
 scalar_t__ gPhysSize ;
 scalar_t__ gVirtBase ;
 int panic (char*,void*) ;

vm_offset_t
ml_static_vtop(
    vm_offset_t vaddr)
{
 if (((vm_address_t)(vaddr) - gVirtBase) >= gPhysSize)
  panic("ml_static_ptovirt(): illegal vaddr: %p\n", (void*)vaddr);
 return ((vm_address_t)(vaddr) - gVirtBase + gPhysBase);
}
