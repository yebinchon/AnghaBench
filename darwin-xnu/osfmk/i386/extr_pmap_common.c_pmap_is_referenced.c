
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;
typedef int boolean_t ;


 int FALSE ;
 int PHYS_REFERENCED ;
 int TRUE ;
 scalar_t__ phys_attribute_test (int ,int ) ;

boolean_t
pmap_is_referenced(ppnum_t pn)
{
        if (phys_attribute_test(pn, PHYS_REFERENCED))
  return TRUE;
 return FALSE;
}
