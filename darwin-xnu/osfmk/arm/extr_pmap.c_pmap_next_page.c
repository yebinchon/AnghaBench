
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ppnum_t ;
typedef int boolean_t ;


 int FALSE ;
 scalar_t__ PAGE_SIZE ;
 int TRUE ;
 scalar_t__ atop (scalar_t__) ;
 scalar_t__ avail_end ;
 scalar_t__ first_avail ;

boolean_t
pmap_next_page(
 ppnum_t *pnum)
{
 if (first_avail != avail_end) {
  *pnum = (ppnum_t)atop(first_avail);
  first_avail += PAGE_SIZE;
  return TRUE;
 }
 return FALSE;
}
