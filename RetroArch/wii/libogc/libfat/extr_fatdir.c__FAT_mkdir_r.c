
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint32_t ;
struct _reent {void* _errno; } ;
struct TYPE_14__ {char* entryData; int filename; } ;
struct TYPE_13__ {int cwdCluster; int rootDirCluster; int lock; int cache; scalar_t__ readOnly; } ;
typedef TYPE_1__ PARTITION ;
typedef TYPE_2__ DIR_ENTRY ;


 void* ATTRIB_DIR ;
 int CLUSTER_FREE ;
 int DIR_ENTRY_DATA_SIZE ;
 int DIR_ENTRY_aDate ;
 size_t DIR_ENTRY_attributes ;
 int DIR_ENTRY_cDate ;
 int DIR_ENTRY_cTime ;
 size_t DIR_ENTRY_cTime_ms ;
 int DIR_ENTRY_cluster ;
 int DIR_ENTRY_clusterHigh ;
 int DIR_ENTRY_mDate ;
 int DIR_ENTRY_mTime ;
 size_t DIR_ENTRY_name ;
 int DIR_SEPARATOR ;
 void* EEXIST ;
 void* EINVAL ;
 void* EIO ;
 void* ENODEV ;
 void* ENOSPC ;
 void* ENOTDIR ;
 void* EROFS ;
 int FAT16_ROOT_DIR_CLUSTER ;
 scalar_t__ NAME_MAX ;
 int _FAT_cache_eraseWritePartialSector (int ,char*,int ,int ,int) ;
 int _FAT_cache_flush (int ) ;
 int _FAT_cache_writePartialSector (int ,char*,int ,int,int) ;
 int _FAT_directory_addEntry (TYPE_1__*,TYPE_2__*,int) ;
 int _FAT_directory_entryFromPath (TYPE_1__*,TYPE_2__*,char const*,char const*) ;
 int _FAT_directory_entryGetCluster (TYPE_1__*,char*) ;
 int _FAT_directory_isDirectory (TYPE_2__*) ;
 int _FAT_fat_clusterToSector (TYPE_1__*,int) ;
 int _FAT_fat_isValidCluster (TYPE_1__*,int) ;
 int _FAT_fat_linkFreeClusterCleared (TYPE_1__*,int ) ;
 int _FAT_filetime_getDateFromRTC () ;
 int _FAT_filetime_getTimeFromRTC () ;
 int _FAT_lock (int *) ;
 TYPE_1__* _FAT_partition_getPartitionFromPath (char const*) ;
 int _FAT_unlock (int *) ;
 int memset (char*,char,int) ;
 char* strchr (char const*,char) ;
 int strncpy (int ,char const*,scalar_t__) ;
 char* strrchr (char const*,int ) ;
 int u16_to_u8array (char*,int ,int) ;

int _FAT_mkdir_r (struct _reent *r, const char *path, int mode) {
 PARTITION* partition = ((void*)0);
 bool fileExists;
 DIR_ENTRY dirEntry;
 const char* pathEnd;
 uint32_t parentCluster, dirCluster;
 uint8_t newEntryData[DIR_ENTRY_DATA_SIZE];

 partition = _FAT_partition_getPartitionFromPath (path);
 if (partition == ((void*)0)) {
  r->_errno = ENODEV;
  return -1;
 }


 if (strchr (path, ':') != ((void*)0)) {
  path = strchr (path, ':') + 1;
 }
 if (strchr (path, ':') != ((void*)0)) {
  r->_errno = EINVAL;
  return -1;
 }

 _FAT_lock(&partition->lock);


 fileExists = _FAT_directory_entryFromPath (partition, &dirEntry, path, ((void*)0));


 if (fileExists) {
  _FAT_unlock(&partition->lock);
  r->_errno = EEXIST;
  return -1;
 }

 if (partition->readOnly) {

  _FAT_unlock(&partition->lock);
  r->_errno = EROFS;
  return -1;
 }


 pathEnd = strrchr (path, DIR_SEPARATOR);
 if (pathEnd == ((void*)0)) {

  parentCluster = partition->cwdCluster;
  pathEnd = path;
 } else {


  if (!_FAT_directory_entryFromPath (partition, &dirEntry, path, pathEnd) ||
   !_FAT_directory_isDirectory(&dirEntry)) {
   _FAT_unlock(&partition->lock);
   r->_errno = ENOTDIR;
   return -1;
  }
  parentCluster = _FAT_directory_entryGetCluster (partition, dirEntry.entryData);

  pathEnd += 1;
 }

 strncpy (dirEntry.filename, pathEnd, NAME_MAX - 1);
 memset (dirEntry.entryData, 0, DIR_ENTRY_DATA_SIZE);


 dirEntry.entryData[DIR_ENTRY_cTime_ms] = 0;
 u16_to_u8array (dirEntry.entryData, DIR_ENTRY_cTime, _FAT_filetime_getTimeFromRTC());
 u16_to_u8array (dirEntry.entryData, DIR_ENTRY_cDate, _FAT_filetime_getDateFromRTC());
 u16_to_u8array (dirEntry.entryData, DIR_ENTRY_mTime, _FAT_filetime_getTimeFromRTC());
 u16_to_u8array (dirEntry.entryData, DIR_ENTRY_mDate, _FAT_filetime_getDateFromRTC());
 u16_to_u8array (dirEntry.entryData, DIR_ENTRY_aDate, _FAT_filetime_getDateFromRTC());


 dirEntry.entryData[DIR_ENTRY_attributes] = ATTRIB_DIR;


 dirCluster = _FAT_fat_linkFreeClusterCleared (partition, CLUSTER_FREE);
 if (!_FAT_fat_isValidCluster(partition, dirCluster)) {

  _FAT_unlock(&partition->lock);
  r->_errno = ENOSPC;
  return -1;
 }
 u16_to_u8array (dirEntry.entryData, DIR_ENTRY_cluster, dirCluster);
 u16_to_u8array (dirEntry.entryData, DIR_ENTRY_clusterHigh, dirCluster >> 16);


 if (!_FAT_directory_addEntry (partition, &dirEntry, parentCluster)) {
  _FAT_unlock(&partition->lock);
  r->_errno = ENOSPC;
  return -1;
 }


 memset (newEntryData, 0, DIR_ENTRY_DATA_SIZE);
 memset (newEntryData, ' ', 11);
 newEntryData[DIR_ENTRY_name] = '.';
 newEntryData[DIR_ENTRY_attributes] = ATTRIB_DIR;
 u16_to_u8array (newEntryData, DIR_ENTRY_cluster, dirCluster);
 u16_to_u8array (newEntryData, DIR_ENTRY_clusterHigh, dirCluster >> 16);


 _FAT_cache_eraseWritePartialSector ( partition->cache, newEntryData,
  _FAT_fat_clusterToSector (partition, dirCluster), 0, DIR_ENTRY_DATA_SIZE);




 if(parentCluster == partition->rootDirCluster)
  parentCluster = FAT16_ROOT_DIR_CLUSTER;

 newEntryData[DIR_ENTRY_name + 1] = '.';
 u16_to_u8array (newEntryData, DIR_ENTRY_cluster, parentCluster);
 u16_to_u8array (newEntryData, DIR_ENTRY_clusterHigh, parentCluster >> 16);


 _FAT_cache_writePartialSector ( partition->cache, newEntryData,
  _FAT_fat_clusterToSector (partition, dirCluster), DIR_ENTRY_DATA_SIZE, DIR_ENTRY_DATA_SIZE);


 if (!_FAT_cache_flush(partition->cache)) {
  _FAT_unlock(&partition->lock);
  r->_errno = EIO;
  return -1;
 }

 _FAT_unlock(&partition->lock);
 return 0;
}
