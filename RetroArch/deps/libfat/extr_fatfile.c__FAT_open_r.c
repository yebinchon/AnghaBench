
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef void* uint32_t ;
struct _reent {void* _errno; } ;
struct TYPE_18__ {int dataEnd; int dataStart; scalar_t__* entryData; int filename; } ;
struct TYPE_15__ {scalar_t__ cluster; int sector; int byte; } ;
struct TYPE_17__ {int read; int write; int append; int modified; int filesize; scalar_t__ startCluster; int inUse; struct TYPE_17__* prevOpenFile; struct TYPE_17__* nextOpenFile; TYPE_1__ rwPosition; TYPE_1__ appendPosition; scalar_t__ currentPosition; int dirEntryEnd; int dirEntryStart; TYPE_2__* partition; } ;
struct TYPE_16__ {int bytesPerCluster; int bytesPerSector; int sectorsPerCluster; int openFileCount; int lock; TYPE_3__* firstOpenFile; void* cwdCluster; scalar_t__ readOnly; } ;
typedef TYPE_2__ PARTITION ;
typedef TYPE_3__ FILE_STRUCT ;
typedef TYPE_4__ DIR_ENTRY ;


 scalar_t__ CLUSTER_FREE ;
 int DIR_ENTRY_DATA_SIZE ;
 int DIR_ENTRY_cDate ;
 int DIR_ENTRY_cTime ;
 size_t DIR_ENTRY_cTime_ms ;
 int DIR_ENTRY_fileSize ;
 int DIR_SEPARATOR ;
 void* EACCES ;
 void* EEXIST ;
 void* EFBIG ;
 void* EINVAL ;
 void* EISDIR ;
 void* ENODEV ;
 void* ENOENT ;
 void* ENOSPC ;
 void* ENOTDIR ;
 void* EROFS ;
 scalar_t__ NAME_MAX ;
 int O_APPEND ;
 int O_CREAT ;
 int O_EXCL ;
 int O_LARGEFILE ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 int O_WRONLY ;
 int _FAT_directory_addEntry (TYPE_2__*,TYPE_4__*,void*) ;
 int _FAT_directory_entryFromPath (TYPE_2__*,TYPE_4__*,char const*,char const*) ;
 void* _FAT_directory_entryGetCluster (TYPE_2__*,scalar_t__*) ;
 scalar_t__ _FAT_directory_isDirectory (TYPE_4__*) ;
 int _FAT_directory_isWritable (TYPE_4__*) ;
 int _FAT_fat_clearLinks (TYPE_2__*,scalar_t__) ;
 scalar_t__ _FAT_fat_lastCluster (TYPE_2__*,scalar_t__) ;
 int _FAT_filetime_getDateFromRTC () ;
 int _FAT_filetime_getTimeFromRTC () ;
 int _FAT_lock (int *) ;
 TYPE_2__* _FAT_partition_getPartitionFromPath (char const*) ;
 int _FAT_unlock (int *) ;
 int memset (scalar_t__*,int ,int ) ;
 char* strchr (char const*,char) ;
 int strncpy (int ,char const*,scalar_t__) ;
 char* strrchr (char const*,int ) ;
 int u16_to_u8array (scalar_t__*,int ,int ) ;
 int u8array_to_u32 (scalar_t__*,int ) ;

int _FAT_open_r (struct _reent *r, void *fileStruct, const char *path, int flags, int mode) {
 PARTITION* partition = ((void*)0);
 bool fileExists;
 DIR_ENTRY dirEntry;
 const char* pathEnd;
 uint32_t dirCluster;
 FILE_STRUCT* file = (FILE_STRUCT*) fileStruct;
 partition = _FAT_partition_getPartitionFromPath (path);

 if (partition == ((void*)0))
   {
  r->_errno = ENODEV;
  return -1;
 }


 if (strchr (path, ':') != ((void*)0))
  path = strchr (path, ':') + 1;

 if (strchr (path, ':') != ((void*)0))
   {
  r->_errno = EINVAL;
  return -1;
 }


 if ((flags & 0x03) == O_RDONLY)
   {

  file->read = 1;
  file->write = 0;
  file->append = 0;
 }
   else if ((flags & 0x03) == O_WRONLY)
   {

  file->read = 0;
  file->write = 1;
  file->append = 0;
 }
   else if ((flags & 0x03) == O_RDWR)
   {

  file->read = 1;
  file->write = 1;
  file->append = 0;
 } else {
  r->_errno = EACCES;
  return -1;
 }


 if (file->write && partition->readOnly)
   {
  r->_errno = EROFS;
  return -1;
 }


 _FAT_lock(&partition->lock);
 fileExists = _FAT_directory_entryFromPath (partition, &dirEntry, path, ((void*)0));


 if ((flags & O_CREAT) && (flags & O_EXCL) && fileExists)
   {
  _FAT_unlock(&partition->lock);
  r->_errno = EEXIST;
  return -1;
 }


 if (fileExists && _FAT_directory_isDirectory(&dirEntry))
   {
  _FAT_unlock(&partition->lock);
  r->_errno = EISDIR;
  return -1;
 }


 file->modified = 0;


 if (!fileExists)
   {
  if (flags & O_CREAT)
      {
   if (partition->readOnly)
         {

    _FAT_unlock(&partition->lock);
    r->_errno = EROFS;
    return -1;
   }


   pathEnd = strrchr (path, DIR_SEPARATOR);
   if (pathEnd == ((void*)0))
         {

    dirCluster = partition->cwdCluster;
    pathEnd = path;
   }
         else
         {


    if (!_FAT_directory_entryFromPath (partition, &dirEntry, path, pathEnd) ||
     !_FAT_directory_isDirectory(&dirEntry))
            {
     _FAT_unlock(&partition->lock);
     r->_errno = ENOTDIR;
     return -1;
    }
    dirCluster = _FAT_directory_entryGetCluster (partition, dirEntry.entryData);

    pathEnd += 1;
   }

   strncpy (dirEntry.filename, pathEnd, NAME_MAX - 1);
   memset (dirEntry.entryData, 0, DIR_ENTRY_DATA_SIZE);


   dirEntry.entryData[DIR_ENTRY_cTime_ms] = 0;
   u16_to_u8array (dirEntry.entryData, DIR_ENTRY_cTime, _FAT_filetime_getTimeFromRTC());
   u16_to_u8array (dirEntry.entryData, DIR_ENTRY_cDate, _FAT_filetime_getDateFromRTC());

   if (!_FAT_directory_addEntry (partition, &dirEntry, dirCluster))
         {
    _FAT_unlock(&partition->lock);
    r->_errno = ENOSPC;
    return -1;
   }


   file->modified = 1;
  }
      else
      {

   _FAT_unlock(&partition->lock);
   r->_errno = ENOENT;
   return -1;
  }
 }

 file->filesize = u8array_to_u32 (dirEntry.entryData, DIR_ENTRY_fileSize);
 if (file->write && !_FAT_directory_isWritable(&dirEntry)) {
  _FAT_unlock(&partition->lock);
  r->_errno = EROFS;
  return -1;
 }


 file->partition = partition;

 file->startCluster = _FAT_directory_entryGetCluster (partition, dirEntry.entryData);


 if ((flags & O_TRUNC) && file->write && (file->startCluster != 0)) {
  _FAT_fat_clearLinks (partition, file->startCluster);
  file->startCluster = CLUSTER_FREE;
  file->filesize = 0;

  file->modified = 1;
 }


 file->dirEntryStart = dirEntry.dataStart;
 file->dirEntryEnd = dirEntry.dataEnd;


 file->currentPosition = 0;
 file->rwPosition.cluster = file->startCluster;
 file->rwPosition.sector = 0;
 file->rwPosition.byte = 0;

 if (flags & O_APPEND)
   {
  file->append = 1;


  file->appendPosition.cluster = _FAT_fat_lastCluster (partition, file->startCluster);
  file->appendPosition.sector = (file->filesize % partition->bytesPerCluster) / partition->bytesPerSector;
  file->appendPosition.byte = file->filesize % partition->bytesPerSector;


  if ( (file->filesize > 0) && ((file->filesize % partition->bytesPerCluster)==0) ){

   file->appendPosition.sector = partition->sectorsPerCluster;
   file->appendPosition.byte = 0;
  }
 } else {
  file->append = 0;

  file->appendPosition = file->rwPosition;
 }

 file->inUse = 1;


 partition->openFileCount += 1;
 if (partition->firstOpenFile) {
  file->nextOpenFile = partition->firstOpenFile;
  partition->firstOpenFile->prevOpenFile = file;
 } else {
  file->nextOpenFile = ((void*)0);
 }
 file->prevOpenFile = ((void*)0);
 partition->firstOpenFile = file;

 _FAT_unlock(&partition->lock);

 return (int) file;
}
