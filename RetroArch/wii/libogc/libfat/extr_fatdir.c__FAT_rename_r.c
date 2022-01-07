
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32_t ;
struct _reent {void* _errno; } ;
struct TYPE_15__ {int filename; int entryData; } ;
struct TYPE_14__ {int lock; int cache; int cwdCluster; scalar_t__ readOnly; } ;
typedef TYPE_1__ PARTITION ;
typedef TYPE_2__ DIR_ENTRY ;


 int DIR_SEPARATOR ;
 void* EEXIST ;
 void* EINVAL ;
 void* EIO ;
 void* ENODEV ;
 void* ENOENT ;
 void* ENOSPC ;
 void* ENOTDIR ;
 void* EROFS ;
 void* EXDEV ;
 scalar_t__ NAME_MAX ;
 int _FAT_cache_flush (int ) ;
 int _FAT_directory_addEntry (TYPE_1__*,TYPE_2__*,int ) ;
 scalar_t__ _FAT_directory_entryFromPath (TYPE_1__*,TYPE_2__*,char const*,char const*) ;
 int _FAT_directory_entryGetCluster (TYPE_1__*,int ) ;
 int _FAT_directory_isDirectory (TYPE_2__*) ;
 int _FAT_directory_removeEntry (TYPE_1__*,TYPE_2__*) ;
 int _FAT_lock (int *) ;
 TYPE_1__* _FAT_partition_getPartitionFromPath (char const*) ;
 int _FAT_unlock (int *) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 char* strchr (char const*,char) ;
 int strncpy (int ,char const*,scalar_t__) ;
 char* strrchr (char const*,int ) ;

int _FAT_rename_r (struct _reent *r, const char *oldName, const char *newName) {
 PARTITION* partition = ((void*)0);
 DIR_ENTRY oldDirEntry;
 DIR_ENTRY newDirEntry;
 const char *pathEnd;
 uint32_t dirCluster;


 partition = _FAT_partition_getPartitionFromPath (oldName);
 if (partition == ((void*)0)) {
  r->_errno = ENODEV;
  return -1;
 }

 _FAT_lock(&partition->lock);


 if (partition != _FAT_partition_getPartitionFromPath (newName)) {
  _FAT_unlock(&partition->lock);
  r->_errno = EXDEV;
  return -1;
 }


 if (partition->readOnly) {
  _FAT_unlock(&partition->lock);
  r->_errno = EROFS;
  return -1;
 }


 if (strchr (oldName, ':') != ((void*)0)) {
  oldName = strchr (oldName, ':') + 1;
 }
 if (strchr (oldName, ':') != ((void*)0)) {
  _FAT_unlock(&partition->lock);
  r->_errno = EINVAL;
  return -1;
 }
 if (strchr (newName, ':') != ((void*)0)) {
  newName = strchr (newName, ':') + 1;
 }
 if (strchr (newName, ':') != ((void*)0)) {
  _FAT_unlock(&partition->lock);
  r->_errno = EINVAL;
  return -1;
 }


 if (!_FAT_directory_entryFromPath (partition, &oldDirEntry, oldName, ((void*)0))) {
  _FAT_unlock(&partition->lock);
  r->_errno = ENOENT;
  return -1;
 }


 if (_FAT_directory_entryFromPath (partition, &newDirEntry, newName, ((void*)0))) {
  _FAT_unlock(&partition->lock);
  r->_errno = EEXIST;
  return -1;
 }



 pathEnd = strrchr (newName, DIR_SEPARATOR);
 if (pathEnd == ((void*)0)) {

  dirCluster = partition->cwdCluster;
  pathEnd = newName;
 } else {


  if (!_FAT_directory_entryFromPath (partition, &newDirEntry, newName, pathEnd) ||
   !_FAT_directory_isDirectory(&newDirEntry)) {
   _FAT_unlock(&partition->lock);
   r->_errno = ENOTDIR;
   return -1;
  }
  dirCluster = _FAT_directory_entryGetCluster (partition, newDirEntry.entryData);

  pathEnd += 1;
 }


 memcpy (&newDirEntry, &oldDirEntry, sizeof(DIR_ENTRY));


 strncpy (newDirEntry.filename, pathEnd, NAME_MAX - 1);


 if (!_FAT_directory_addEntry (partition, &newDirEntry, dirCluster)) {
  _FAT_unlock(&partition->lock);
  r->_errno = ENOSPC;
  return -1;
 }


 if (!_FAT_directory_removeEntry (partition, &oldDirEntry)) {
  _FAT_unlock(&partition->lock);
  r->_errno = EIO;
  return -1;
 }


 if (!_FAT_cache_flush (partition->cache)) {
  _FAT_unlock(&partition->lock);
  r->_errno = EIO;
  return -1;
 }

 _FAT_unlock(&partition->lock);
 return 0;
}
