
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int numberOfPages; TYPE_1__* cacheEntries; int disc; } ;
struct TYPE_4__ {int dirty; int cache; int count; int sector; } ;
typedef TYPE_2__ CACHE ;


 int _FAT_disc_writeSectors (int ,int ,int ,int ) ;

bool _FAT_cache_flush (CACHE* cache) {
 unsigned int i;

 for (i = 0; i < cache->numberOfPages; i++) {
  if (cache->cacheEntries[i].dirty) {
   if (!_FAT_disc_writeSectors (cache->disc, cache->cacheEntries[i].sector, cache->cacheEntries[i].count, cache->cacheEntries[i].cache)) {
    return 0;
   }
  }
  cache->cacheEntries[i].dirty = 0;
 }

 return 1;
}
