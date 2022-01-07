
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;
typedef int boolean_t ;


 int FALSE ;
 int PP_ATTR_NOENCRYPT ;
 int pa_valid (int ) ;
 int phys_attribute_test (int ,int ) ;
 int ptoa (int ) ;

boolean_t
pmap_is_noencrypt(
 ppnum_t pn)
{
#pragma unused(pn)
 return FALSE;

}
