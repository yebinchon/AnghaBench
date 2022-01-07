
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 int PP_ATTR_REFERENCED ;
 int phys_attribute_set (int ,int ) ;

__attribute__((used)) static void
pmap_set_reference(
 ppnum_t pn)
{
 phys_attribute_set(pn, PP_ATTR_REFERENCED);
}
