
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;
typedef int boolean_t ;


 int pmap_batch_set_cache_attributes_internal (int ,unsigned int,unsigned int,unsigned int,int ,unsigned int*) ;

boolean_t
pmap_batch_set_cache_attributes(
 ppnum_t pn,
 unsigned int cacheattr,
 unsigned int page_cnt,
 unsigned int page_index,
 boolean_t doit,
 unsigned int *res)
{
 return pmap_batch_set_cache_attributes_internal(pn, cacheattr, page_cnt, page_index, doit, res);
}
