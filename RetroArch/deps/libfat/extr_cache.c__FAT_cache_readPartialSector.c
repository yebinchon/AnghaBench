
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int sec_t ;
struct TYPE_7__ {unsigned int bytesPerSector; } ;
struct TYPE_6__ {unsigned int sector; scalar_t__ cache; } ;
typedef TYPE_1__ CACHE_ENTRY ;
typedef TYPE_2__ CACHE ;


 TYPE_1__* _FAT_cache_getPage (TYPE_2__*,unsigned int) ;
 int memcpy (void*,scalar_t__,size_t) ;

bool _FAT_cache_readPartialSector (CACHE* cache, void* buffer, sec_t sector, unsigned int offset, size_t size)
{
 sec_t sec;
 CACHE_ENTRY *entry;

 if (offset + size > cache->bytesPerSector) return 0;

 entry = _FAT_cache_getPage(cache,sector);
 if(entry==((void*)0)) return 0;

 sec = sector - entry->sector;
 memcpy(buffer,entry->cache + ((sec*cache->bytesPerSector) + offset),size);

 return 1;
}
