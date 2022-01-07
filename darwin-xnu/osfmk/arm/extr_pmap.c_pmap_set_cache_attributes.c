
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 int pmap_set_cache_attributes_internal (int ,unsigned int) ;

void
pmap_set_cache_attributes(
 ppnum_t pn,
 unsigned int cacheattr)
{
 pmap_set_cache_attributes_internal(pn, cacheattr);
}
