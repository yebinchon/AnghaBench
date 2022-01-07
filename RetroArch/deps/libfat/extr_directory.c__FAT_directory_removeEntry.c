
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {scalar_t__ cluster; scalar_t__ sector; int offset; } ;
struct TYPE_11__ {TYPE_2__ dataEnd; TYPE_2__ dataStart; } ;
struct TYPE_9__ {int cache; } ;
typedef TYPE_1__ PARTITION ;
typedef TYPE_2__ DIR_ENTRY_POSITION ;
typedef TYPE_3__ DIR_ENTRY ;


 int DIR_ENTRY_DATA_SIZE ;
 int DIR_ENTRY_FREE ;
 int _FAT_cache_readPartialSector (int ,int *,scalar_t__,int,int) ;
 int _FAT_cache_writePartialSector (int ,int *,scalar_t__,int,int) ;
 int _FAT_directory_incrementDirEntryPosition (TYPE_1__*,TYPE_2__*,int) ;
 scalar_t__ _FAT_fat_clusterToSector (TYPE_1__*,scalar_t__) ;

bool _FAT_directory_removeEntry (PARTITION* partition, DIR_ENTRY* entry)
{
   DIR_ENTRY_POSITION entryStart = entry->dataStart;
   DIR_ENTRY_POSITION entryEnd = entry->dataEnd;
   bool entryStillValid;
   bool finished;
   uint8_t entryData[DIR_ENTRY_DATA_SIZE];


   for ( entryStillValid = 1, finished = 0;
         entryStillValid && !finished;
         entryStillValid = _FAT_directory_incrementDirEntryPosition (partition, &entryStart, 0))
   {
      _FAT_cache_readPartialSector (partition->cache, entryData, _FAT_fat_clusterToSector(partition, entryStart.cluster) + entryStart.sector, entryStart.offset * DIR_ENTRY_DATA_SIZE, DIR_ENTRY_DATA_SIZE);
      entryData[0] = DIR_ENTRY_FREE;
      _FAT_cache_writePartialSector (partition->cache, entryData, _FAT_fat_clusterToSector(partition, entryStart.cluster) + entryStart.sector, entryStart.offset * DIR_ENTRY_DATA_SIZE, DIR_ENTRY_DATA_SIZE);
      if ((entryStart.cluster == entryEnd.cluster) && (entryStart.sector == entryEnd.sector) && (entryStart.offset == entryEnd.offset))
         finished = 1;
   }

   if (!entryStillValid)
      return 0;

   return 1;
}
