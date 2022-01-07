
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CACHE_SYNC_INSTRUCTIONS ;
 int CACHE_SYNC_WRITEBACK ;
 int CacheRangeFlush (void*,int,int ) ;

void cache_flush_d_inval_i(void *start_addr, void *end_addr)
{
 int size = end_addr - start_addr;
 CacheRangeFlush(start_addr, size, CACHE_SYNC_WRITEBACK);
 CacheRangeFlush(start_addr, size, CACHE_SYNC_INSTRUCTIONS);
}
