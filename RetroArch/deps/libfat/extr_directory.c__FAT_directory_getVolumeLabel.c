
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_11__ {scalar_t__ cluster; int offset; scalar_t__ sector; } ;
struct TYPE_12__ {TYPE_2__ dataEnd; } ;
struct TYPE_10__ {scalar_t__ rootDirCluster; int cache; } ;
typedef TYPE_1__ PARTITION ;
typedef TYPE_2__ DIR_ENTRY_POSITION ;
typedef TYPE_3__ DIR_ENTRY ;


 char ATTRIB_VOL ;
 int DIR_ENTRY_DATA_SIZE ;
 char DIR_ENTRY_FREE ;
 char DIR_ENTRY_LAST ;
 size_t DIR_ENTRY_attributes ;
 int DIR_ENTRY_name ;
 scalar_t__ FAT16_ROOT_DIR_CLUSTER ;
 int _FAT_cache_readPartialSector (int ,char*,scalar_t__,int,int) ;
 int _FAT_directory_getRootEntry (TYPE_1__*,TYPE_3__*) ;
 int _FAT_directory_incrementDirEntryPosition (TYPE_1__*,TYPE_2__*,int) ;
 scalar_t__ _FAT_fat_clusterToSector (TYPE_1__*,scalar_t__) ;

bool _FAT_directory_getVolumeLabel (PARTITION* partition, char *label)
{
   DIR_ENTRY entry;
   DIR_ENTRY_POSITION entryEnd;
   uint8_t entryData[DIR_ENTRY_DATA_SIZE];
   int i;
   bool end;

   _FAT_directory_getRootEntry(partition, &entry);

   entryEnd = entry.dataEnd;


   if (entryEnd.cluster == FAT16_ROOT_DIR_CLUSTER)
      entryEnd.cluster = partition->rootDirCluster;

   label[0]='\0';
   label[11]='\0';
   end = 0;




   while(!end)
   {

      if(!_FAT_cache_readPartialSector (partition->cache, entryData,
               _FAT_fat_clusterToSector(partition, entryEnd.cluster) + entryEnd.sector,
               entryEnd.offset * DIR_ENTRY_DATA_SIZE, DIR_ENTRY_DATA_SIZE))
         return 0;

      if (entryData[DIR_ENTRY_attributes] == ATTRIB_VOL && entryData[0] != DIR_ENTRY_FREE)
      {
         for (i = 0; i < 11; i++)
            label[i] = entryData[DIR_ENTRY_name + i];
         return 1;
      }
      else if (entryData[0] == DIR_ENTRY_LAST)
         end = 1;

      if (_FAT_directory_incrementDirEntryPosition (partition, &entryEnd, 0) == 0)
         end = 1;
   }
   return 0;
}
