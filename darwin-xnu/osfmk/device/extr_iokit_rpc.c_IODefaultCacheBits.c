
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;
typedef int addr64_t ;


 int PAGE_SHIFT ;
 unsigned int pmap_cache_attributes (int ) ;

unsigned int IODefaultCacheBits(addr64_t pa)
{
 return(pmap_cache_attributes((ppnum_t)(pa >> PAGE_SHIFT)));
}
