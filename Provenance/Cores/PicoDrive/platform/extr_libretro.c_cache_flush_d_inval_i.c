
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MS_CACHE_ONLY ;
 int MS_INVALIDATE_ICACHE ;
 int MS_SYNC ;
 int __clear_cache (void*,void*) ;
 int msync (void*,int,int) ;
 int sys_dcache_flush (void*,size_t) ;
 int sys_icache_invalidate (void*,size_t) ;

void cache_flush_d_inval_i(void *start, void *end)
{
}
