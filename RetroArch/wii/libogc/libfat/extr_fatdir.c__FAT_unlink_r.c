
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint32_t ;
struct _reent {void* _errno; } ;
struct TYPE_18__ {int entryData; } ;
struct TYPE_17__ {int lock; int cache; scalar_t__ readOnly; } ;
typedef TYPE_1__ PARTITION ;
typedef TYPE_2__ DIR_ENTRY ;


 void* EINVAL ;
 void* EIO ;
 void* ENODEV ;
 void* ENOENT ;
 void* ENOTEMPTY ;
 void* EROFS ;
 int _FAT_cache_flush (int ) ;
 int _FAT_directory_entryFromPath (TYPE_1__*,TYPE_2__*,char const*,int *) ;
 int _FAT_directory_entryGetCluster (TYPE_1__*,int ) ;
 int _FAT_directory_getFirstEntry (TYPE_1__*,TYPE_2__*,int ) ;
 int _FAT_directory_getNextEntry (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ _FAT_directory_isDirectory (TYPE_2__*) ;
 int _FAT_directory_isDot (TYPE_2__*) ;
 int _FAT_directory_removeEntry (TYPE_1__*,TYPE_2__*) ;
 int _FAT_fat_clearLinks (TYPE_1__*,int ) ;
 scalar_t__ _FAT_fat_isValidCluster (TYPE_1__*,int ) ;
 int _FAT_lock (int *) ;
 TYPE_1__* _FAT_partition_getPartitionFromPath (char const*) ;
 int _FAT_unlock (int *) ;
 char* strchr (char const*,char) ;

int _FAT_unlink_r (struct _reent *r, const char *path) {
 PARTITION* partition = ((void*)0);
 DIR_ENTRY dirEntry;
 DIR_ENTRY dirContents;
 uint32_t cluster;
 bool nextEntry;
 bool errorOccured = 0;


 partition = _FAT_partition_getPartitionFromPath (path);
 if (partition == ((void*)0)) {
  r->_errno = ENODEV;
  return -1;
 }


 if (partition->readOnly) {
  r->_errno = EROFS;
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


 if (!_FAT_directory_entryFromPath (partition, &dirEntry, path, ((void*)0))) {
  _FAT_unlock(&partition->lock);
  r->_errno = ENOENT;
  return -1;
 }

 cluster = _FAT_directory_entryGetCluster (partition, dirEntry.entryData);


 if (_FAT_directory_isDirectory (&dirEntry)) {
  nextEntry = _FAT_directory_getFirstEntry (partition, &dirContents, cluster);

  while (nextEntry) {
   if (!_FAT_directory_isDot (&dirContents)) {

    _FAT_unlock(&partition->lock);
    r->_errno = ENOTEMPTY;
    return -1;
   }
   nextEntry = _FAT_directory_getNextEntry (partition, &dirContents);
  }
 }

 if (_FAT_fat_isValidCluster(partition, cluster)) {

  if (!_FAT_fat_clearLinks (partition, cluster)) {
   r->_errno = EIO;
   errorOccured = 1;
  }
 }


 if (!_FAT_directory_removeEntry (partition, &dirEntry)) {
  r->_errno = EIO;
  errorOccured = 1;
 }


 if (!_FAT_cache_flush(partition->cache)) {
  r->_errno = EIO;
  errorOccured = 1;
 }

 _FAT_unlock(&partition->lock);
 if (errorOccured) {
  return -1;
 } else {
  return 0;
 }
}
