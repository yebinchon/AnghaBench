
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int numberOfPages; TYPE_1__* cacheEntries; } ;
struct TYPE_5__ {int dirty; scalar_t__ count; scalar_t__ last_access; int sector; } ;
typedef TYPE_2__ CACHE ;


 int CACHE_FREE ;
 int _FAT_cache_flush (TYPE_2__*) ;

void _FAT_cache_invalidate (CACHE* cache) {
 unsigned int i;
 _FAT_cache_flush(cache);
 for (i = 0; i < cache->numberOfPages; i++) {
  cache->cacheEntries[i].sector = CACHE_FREE;
  cache->cacheEntries[i].last_access = 0;
  cache->cacheEntries[i].count = 0;
  cache->cacheEntries[i].dirty = 0;
 }
}
