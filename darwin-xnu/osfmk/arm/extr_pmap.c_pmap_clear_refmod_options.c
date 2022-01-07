
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 unsigned int PP_ATTR_MODIFIED ;
 unsigned int PP_ATTR_REFERENCED ;
 unsigned int VM_MEM_MODIFIED ;
 unsigned int VM_MEM_REFERENCED ;
 int phys_attribute_clear (int ,unsigned int,unsigned int,void*) ;

void
pmap_clear_refmod_options(
 ppnum_t pn,
 unsigned int mask,
 unsigned int options,
 void *arg)
{
 unsigned int bits;

 bits = ((mask & VM_MEM_MODIFIED) ? PP_ATTR_MODIFIED : 0) |
  ((mask & VM_MEM_REFERENCED) ? PP_ATTR_REFERENCED : 0);
 phys_attribute_clear(pn, bits, options, arg);
}
