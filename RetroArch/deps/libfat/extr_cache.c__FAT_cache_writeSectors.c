
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ sec_t ;
struct TYPE_7__ {scalar_t__ bytesPerSector; } ;
struct TYPE_6__ {scalar_t__ sector; scalar_t__ count; int dirty; scalar_t__ cache; } ;
typedef TYPE_1__ CACHE_ENTRY ;
typedef TYPE_2__ CACHE ;


 TYPE_1__* _FAT_cache_getPage (TYPE_2__*,scalar_t__) ;
 int memcpy (scalar_t__,int const*,scalar_t__) ;

bool _FAT_cache_writeSectors (CACHE* cache, sec_t sector, sec_t numSectors, const void* buffer)
{
 sec_t sec;
 sec_t secs_to_write;
 CACHE_ENTRY* entry;
 const uint8_t *src = (const uint8_t *)buffer;

 while(numSectors>0)
 {
  entry = _FAT_cache_getPage(cache,sector);
  if(entry==((void*)0)) return 0;

  sec = sector - entry->sector;
  secs_to_write = entry->count - sec;
  if(secs_to_write>numSectors) secs_to_write = numSectors;

  memcpy(entry->cache + (sec*cache->bytesPerSector),src,(secs_to_write*cache->bytesPerSector));

  src += (secs_to_write*cache->bytesPerSector);
  sector += secs_to_write;
  numSectors -= secs_to_write;

  entry->dirty = 1;
 }
 return 1;
}
