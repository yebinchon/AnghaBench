
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ ptoa (int ) ;
 scalar_t__ vm_first_phys ;
 scalar_t__ vm_last_phys ;

boolean_t
pmap_has_managed_page(ppnum_t first, ppnum_t last)
{
    if (ptoa(first) >= vm_last_phys) return (FALSE);
    if (ptoa(last) < vm_first_phys) return (FALSE);

 return (TRUE);
}
