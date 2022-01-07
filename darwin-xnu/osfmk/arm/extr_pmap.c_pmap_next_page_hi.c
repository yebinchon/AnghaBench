
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;
typedef int boolean_t ;


 int pmap_next_page (int *) ;

boolean_t
pmap_next_page_hi(
 ppnum_t * pnum)
{
 return pmap_next_page(pnum);
}
