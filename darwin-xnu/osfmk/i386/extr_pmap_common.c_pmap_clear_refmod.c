
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 unsigned int PHYS_MODIFIED ;
 unsigned int PHYS_REFERENCED ;
 unsigned int VM_MEM_MODIFIED ;
 unsigned int VM_MEM_REFERENCED ;
 int phys_attribute_clear (int ,unsigned int,int ,int *) ;

void
pmap_clear_refmod(ppnum_t pn, unsigned int mask)
{
 unsigned int x86Mask;

 x86Mask = ( ((mask & VM_MEM_MODIFIED)? PHYS_MODIFIED : 0)
             | ((mask & VM_MEM_REFERENCED)? PHYS_REFERENCED : 0));

 phys_attribute_clear(pn, x86Mask, 0, ((void*)0));
}
