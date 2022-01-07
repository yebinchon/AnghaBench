
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 int PHYS_REFERENCED ;
 int phys_attribute_clear (int ,int ,int ,int *) ;

void
pmap_clear_reference(ppnum_t pn)
{
 phys_attribute_clear(pn, PHYS_REFERENCED, 0, ((void*)0));
}
