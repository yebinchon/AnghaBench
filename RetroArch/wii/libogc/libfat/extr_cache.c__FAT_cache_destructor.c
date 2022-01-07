
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int numberOfPages; struct TYPE_5__* cacheEntries; struct TYPE_5__* cache; } ;
typedef TYPE_1__ CACHE ;


 int _FAT_cache_flush (TYPE_1__*) ;
 int _FAT_mem_free (TYPE_1__*) ;

void _FAT_cache_destructor (CACHE* cache) {
 unsigned int i;

 _FAT_cache_flush(cache);


 for (i = 0; i < cache->numberOfPages; i++) {
  _FAT_mem_free (cache->cacheEntries[i].cache);
 }
 _FAT_mem_free (cache->cacheEntries);
 _FAT_mem_free (cache);
}
