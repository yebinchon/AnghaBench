
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ucs2_t ;
struct TYPE_10__ {scalar_t__ cluster; scalar_t__ sector; int offset; } ;
struct TYPE_11__ {int filename; int entryData; TYPE_2__ dataStart; TYPE_2__ dataEnd; } ;
struct TYPE_9__ {int cache; } ;
typedef TYPE_1__ PARTITION ;
typedef TYPE_2__ DIR_ENTRY_POSITION ;
typedef TYPE_3__ DIR_ENTRY ;


 int DIR_ENTRY_DATA_SIZE ;
 int LFN_END ;
 size_t LFN_offset_ordinal ;
 size_t* LFN_offset_table ;
 int MAX_LFN_LENGTH ;
 int NAME_MAX ;
 int _FAT_cache_readPartialSector (int ,int*,scalar_t__,int,int) ;
 int _FAT_directory_entryGetAlias (int ,int ) ;
 int _FAT_directory_incrementDirEntryPosition (TYPE_1__*,TYPE_2__*,int) ;
 size_t _FAT_directory_ucs2tombs (int ,int*,int ) ;
 scalar_t__ _FAT_fat_clusterToSector (TYPE_1__*,scalar_t__) ;
 int memcpy (int ,int*,int) ;
 int memset (int ,char,int ) ;

bool _FAT_directory_entryFromPosition (PARTITION* partition, DIR_ENTRY* entry) {
 DIR_ENTRY_POSITION entryStart = entry->dataStart;
 DIR_ENTRY_POSITION entryEnd = entry->dataEnd;
 bool entryStillValid;
 bool finished;
 ucs2_t lfn[MAX_LFN_LENGTH];
 int i;
 int lfnPos;
 uint8_t entryData[DIR_ENTRY_DATA_SIZE];

 memset (entry->filename, '\0', NAME_MAX);


 for ( entryStillValid = 1, finished = 0;
  entryStillValid && !finished;
  entryStillValid = _FAT_directory_incrementDirEntryPosition (partition, &entryStart, 0))
 {
  _FAT_cache_readPartialSector (partition->cache, entryData,
   _FAT_fat_clusterToSector(partition, entryStart.cluster) + entryStart.sector,
   entryStart.offset * DIR_ENTRY_DATA_SIZE, DIR_ENTRY_DATA_SIZE);

  if ((entryStart.cluster == entryEnd.cluster)
   && (entryStart.sector == entryEnd.sector)
   && (entryStart.offset == entryEnd.offset)) {

   memcpy (entry->entryData, entryData, DIR_ENTRY_DATA_SIZE);
   finished = 1;
  } else {

   lfnPos = ((entryData[LFN_offset_ordinal] & ~LFN_END) - 1) * 13;
   for (i = 0; i < 13; i++) {
    if (lfnPos + i < MAX_LFN_LENGTH - 1) {
     lfn[lfnPos + i] = entryData[LFN_offset_table[i]] | (entryData[LFN_offset_table[i]+1] << 8);
    }
   }
  }
 }

 if (!entryStillValid) {
  return 0;
 }

 entryStart = entry->dataStart;
 if ((entryStart.cluster == entryEnd.cluster)
  && (entryStart.sector == entryEnd.sector)
  && (entryStart.offset == entryEnd.offset)) {

  if (!_FAT_directory_entryGetAlias (entry->entryData, entry->filename)) {
   return 0;
  }
 } else {

  if (_FAT_directory_ucs2tombs (entry->filename, lfn, NAME_MAX) == (size_t)-1) {
   return 0;
  }
 }

 return 1;
}
