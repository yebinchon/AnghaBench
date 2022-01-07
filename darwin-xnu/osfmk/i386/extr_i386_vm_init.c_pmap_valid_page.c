
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ppnum_t ;
struct TYPE_3__ {scalar_t__ base; scalar_t__ end; } ;
typedef TYPE_1__ pmap_memory_region_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 unsigned int pmap_memory_region_count ;
 TYPE_1__* pmap_memory_regions ;

boolean_t
pmap_valid_page(
 ppnum_t pn)
{
        unsigned int i;
 pmap_memory_region_t *pmptr = pmap_memory_regions;

 for (i = 0; i < pmap_memory_region_count; i++, pmptr++) {
         if ( (pn >= pmptr->base) && (pn <= pmptr->end) )
                 return TRUE;
 }
 return FALSE;
}
