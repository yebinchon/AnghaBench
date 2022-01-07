
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int sec_t ;
struct TYPE_6__ {unsigned int numberOfPages; unsigned int sectorsPerPage; unsigned int bytesPerSector; TYPE_1__* cacheEntries; int endOfPartition; int const* disc; } ;
struct TYPE_5__ {int dirty; int * cache; scalar_t__ last_access; scalar_t__ count; int sector; } ;
typedef int DISC_INTERFACE ;
typedef TYPE_1__ CACHE_ENTRY ;
typedef TYPE_2__ CACHE ;


 int CACHE_FREE ;
 scalar_t__ _FAT_mem_align (unsigned int) ;
 scalar_t__ _FAT_mem_allocate (int) ;
 int _FAT_mem_free (TYPE_2__*) ;

CACHE* _FAT_cache_constructor (unsigned int numberOfPages, unsigned int sectorsPerPage, const DISC_INTERFACE* discInterface, sec_t endOfPartition, unsigned int bytesPerSector) {
 CACHE* cache;
 unsigned int i;
 CACHE_ENTRY* cacheEntries;

 if (numberOfPages < 2) {
  numberOfPages = 2;
 }

 if (sectorsPerPage < 8) {
  sectorsPerPage = 8;
 }

 cache = (CACHE*) _FAT_mem_allocate (sizeof(CACHE));
 if (cache == ((void*)0)) {
  return ((void*)0);
 }

 cache->disc = discInterface;
 cache->endOfPartition = endOfPartition;
 cache->numberOfPages = numberOfPages;
 cache->sectorsPerPage = sectorsPerPage;
 cache->bytesPerSector = bytesPerSector;

 cacheEntries = (CACHE_ENTRY*) _FAT_mem_allocate ( sizeof(CACHE_ENTRY) * numberOfPages);
 if (cacheEntries == ((void*)0)) {
  _FAT_mem_free (cache);
  return ((void*)0);
 }

 for (i = 0; i < numberOfPages; i++) {
  cacheEntries[i].sector = CACHE_FREE;
  cacheEntries[i].count = 0;
  cacheEntries[i].last_access = 0;
  cacheEntries[i].dirty = 0;
  cacheEntries[i].cache = (uint8_t*) _FAT_mem_align ( sectorsPerPage * bytesPerSector );
 }

 cache->cacheEntries = cacheEntries;

 return cache;
}
