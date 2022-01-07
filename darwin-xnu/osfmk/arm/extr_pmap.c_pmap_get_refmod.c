
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 int PP_ATTR_MODIFIED ;
 int PP_ATTR_REFERENCED ;
 unsigned int VM_MEM_MODIFIED ;
 unsigned int VM_MEM_REFERENCED ;
 scalar_t__ phys_attribute_test (int ,int ) ;

unsigned int
pmap_get_refmod(
 ppnum_t pn)
{
 return (((phys_attribute_test(pn, PP_ATTR_MODIFIED)) ? VM_MEM_MODIFIED : 0)
  | ((phys_attribute_test(pn, PP_ATTR_REFERENCED)) ? VM_MEM_REFERENCED : 0));
}
