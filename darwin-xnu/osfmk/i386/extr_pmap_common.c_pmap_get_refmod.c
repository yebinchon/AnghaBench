
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 int PHYS_MODIFIED ;
 int PHYS_REFERENCED ;
 unsigned int VM_MEM_MODIFIED ;
 unsigned int VM_MEM_REFERENCED ;
 int phys_attribute_test (int ,int) ;

unsigned int
pmap_get_refmod(ppnum_t pn)
{
        int refmod;
 unsigned int retval = 0;

 refmod = phys_attribute_test(pn, PHYS_MODIFIED | PHYS_REFERENCED);

 if (refmod & PHYS_MODIFIED)
         retval |= VM_MEM_MODIFIED;
 if (refmod & PHYS_REFERENCED)
         retval |= VM_MEM_REFERENCED;

 return (retval);
}
