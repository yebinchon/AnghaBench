
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;
typedef int boolean_t ;


 int PP_ATTR_REFERENCED ;
 int phys_attribute_test (int ,int ) ;

boolean_t
pmap_is_referenced(
 ppnum_t pn)
{
 return phys_attribute_test(pn, PP_ATTR_REFERENCED);
}
