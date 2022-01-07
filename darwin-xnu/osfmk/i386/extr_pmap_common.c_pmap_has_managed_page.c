
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ppnum_t ;
struct TYPE_3__ {scalar_t__ ksize; scalar_t__ kaddr; } ;
typedef TYPE_1__ boot_args ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ bootArgs; } ;


 int FALSE ;
 TYPE_2__ PE_state ;
 int PHYS_MANAGED ;
 int assert (int) ;
 size_t atop_32 (scalar_t__) ;
 size_t last_managed_page ;
 int* pmap_phys_attributes ;

boolean_t
pmap_has_managed_page(ppnum_t first, ppnum_t last)
{
 ppnum_t pn, kdata_start, kdata_end;
 boolean_t result;
 boot_args * args;

 args = (boot_args *) PE_state.bootArgs;




 kdata_start = atop_32(args->kaddr);
 kdata_end = atop_32(args->kaddr + args->ksize);

    assert(last_managed_page);
    assert(first <= last);

    for (result = FALSE, pn = first;
     !result
       && (pn <= last)
       && (pn <= last_managed_page);
      pn++)
    {
  if ((pn >= kdata_start) && (pn < kdata_end)) continue;
     result = (0 != (pmap_phys_attributes[pn] & PHYS_MANAGED));
    }

 return (result);
}
