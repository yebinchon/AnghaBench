
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int sec_t ;
struct TYPE_6__ {unsigned int numberOfPages; unsigned int sectorsPerPage; unsigned int endOfPartition; int disc; TYPE_1__* cacheEntries; } ;
struct TYPE_5__ {unsigned int sector; unsigned int count; unsigned int last_access; int dirty; int cache; } ;
typedef TYPE_1__ CACHE_ENTRY ;
typedef TYPE_2__ CACHE ;


 unsigned int CACHE_FREE ;
 unsigned int UINT_MAX ;
 int _FAT_disc_readSectors (int ,unsigned int,unsigned int,int ) ;
 int _FAT_disc_writeSectors (int ,unsigned int,unsigned int,int ) ;
 void* accessTime () ;

__attribute__((used)) static CACHE_ENTRY* _FAT_cache_getPage(CACHE *cache,sec_t sector)
{
 unsigned int i;
 CACHE_ENTRY* cacheEntries = cache->cacheEntries;
 unsigned int numberOfPages = cache->numberOfPages;
 unsigned int sectorsPerPage = cache->sectorsPerPage;

 bool foundFree = 0;
 unsigned int oldUsed = 0;
 unsigned int oldAccess = UINT_MAX;

 for(i=0;i<numberOfPages;i++)
   {
  if(sector>=cacheEntries[i].sector && sector<(cacheEntries[i].sector + cacheEntries[i].count))
      {
   cacheEntries[i].last_access = accessTime();
   return &(cacheEntries[i]);
  }

  if(foundFree==0 && (cacheEntries[i].sector==CACHE_FREE || cacheEntries[i].last_access<oldAccess))
      {
   if(cacheEntries[i].sector==CACHE_FREE) foundFree = 1;
   oldUsed = i;
   oldAccess = cacheEntries[i].last_access;
  }
 }

 if(foundFree==0 && cacheEntries[oldUsed].dirty==1)
   {
  if(!_FAT_disc_writeSectors(cache->disc,cacheEntries[oldUsed].sector,cacheEntries[oldUsed].count,cacheEntries[oldUsed].cache)) return ((void*)0);
  cacheEntries[oldUsed].dirty = 0;
 }

 sector = (sector/sectorsPerPage)*sectorsPerPage;
 sec_t next_page = sector + sectorsPerPage;
 if(next_page > cache->endOfPartition) next_page = cache->endOfPartition;

 if(!_FAT_disc_readSectors(cache->disc,sector,next_page-sector,cacheEntries[oldUsed].cache)) return ((void*)0);

 cacheEntries[oldUsed].sector = sector;
 cacheEntries[oldUsed].count = next_page-sector;
 cacheEntries[oldUsed].last_access = accessTime();

 return &(cacheEntries[oldUsed]);
}
