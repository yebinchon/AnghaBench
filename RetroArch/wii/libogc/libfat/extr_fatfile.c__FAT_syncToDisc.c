
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int cache; } ;
struct TYPE_5__ {int offset; scalar_t__ sector; int cluster; } ;
struct TYPE_6__ {int modified; int startCluster; TYPE_4__* partition; TYPE_1__ dirEntryEnd; int filesize; scalar_t__ write; int inUse; } ;
typedef TYPE_2__ FILE_STRUCT ;


 int ATTRIB_ARCH ;
 int DIR_ENTRY_DATA_SIZE ;
 int DIR_ENTRY_aDate ;
 size_t DIR_ENTRY_attributes ;
 int DIR_ENTRY_cluster ;
 int DIR_ENTRY_clusterHigh ;
 int DIR_ENTRY_fileSize ;
 int DIR_ENTRY_mDate ;
 int DIR_ENTRY_mTime ;
 int EBADF ;
 int EIO ;
 int _FAT_cache_flush (int ) ;
 int _FAT_cache_readPartialSector (int ,int *,scalar_t__,int,int) ;
 int _FAT_cache_writePartialSector (int ,int *,scalar_t__,int,int) ;
 scalar_t__ _FAT_fat_clusterToSector (TYPE_4__*,int ) ;
 int _FAT_filetime_getDateFromRTC () ;
 int _FAT_filetime_getTimeFromRTC () ;
 int u16_to_u8array (int *,int ,int) ;
 int u32_to_u8array (int *,int ,int ) ;

int _FAT_syncToDisc (FILE_STRUCT* file) {
 uint8_t dirEntryData[DIR_ENTRY_DATA_SIZE];

 if (!file || !file->inUse) {
  return EBADF;
 }

 if (file->write && file->modified) {

  _FAT_cache_readPartialSector (file->partition->cache, dirEntryData,
   _FAT_fat_clusterToSector(file->partition, file->dirEntryEnd.cluster) + file->dirEntryEnd.sector,
   file->dirEntryEnd.offset * DIR_ENTRY_DATA_SIZE, DIR_ENTRY_DATA_SIZE);



  u32_to_u8array (dirEntryData, DIR_ENTRY_fileSize, file->filesize);


  u16_to_u8array (dirEntryData, DIR_ENTRY_cluster, file->startCluster);
  u16_to_u8array (dirEntryData, DIR_ENTRY_clusterHigh, file->startCluster >> 16);


  u16_to_u8array (dirEntryData, DIR_ENTRY_mTime, _FAT_filetime_getTimeFromRTC());
  u16_to_u8array (dirEntryData, DIR_ENTRY_mDate, _FAT_filetime_getDateFromRTC());


  u16_to_u8array (dirEntryData, DIR_ENTRY_aDate, _FAT_filetime_getDateFromRTC());


  dirEntryData[DIR_ENTRY_attributes] |= ATTRIB_ARCH;


  _FAT_cache_writePartialSector (file->partition->cache, dirEntryData,
   _FAT_fat_clusterToSector(file->partition, file->dirEntryEnd.cluster) + file->dirEntryEnd.sector,
   file->dirEntryEnd.offset * DIR_ENTRY_DATA_SIZE, DIR_ENTRY_DATA_SIZE);


  if (!_FAT_cache_flush(file->partition->cache)) {
   return EIO;
  }
 }

 file->modified = 0;

 return 0;
}
