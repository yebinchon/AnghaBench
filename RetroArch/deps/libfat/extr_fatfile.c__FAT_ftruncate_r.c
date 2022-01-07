
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct _reent {void* _errno; } ;
typedef scalar_t__ off_t ;
typedef int len ;
struct TYPE_11__ {int cluster; int sector; int byte; } ;
struct TYPE_10__ {int filesize; scalar_t__ startCluster; int currentPosition; int modified; TYPE_3__ appendPosition; scalar_t__ append; TYPE_3__ rwPosition; TYPE_1__* partition; int write; int inUse; } ;
struct TYPE_9__ {int bytesPerCluster; int bytesPerSector; int sectorsPerCluster; int lock; } ;
typedef TYPE_1__ PARTITION ;
typedef TYPE_2__ FILE_STRUCT ;
typedef TYPE_3__ FILE_POSITION ;


 scalar_t__ CLUSTER_FREE ;
 void* EBADF ;
 void* EFBIG ;
 void* EINVAL ;
 void* ENOSPC ;
 scalar_t__ FILE_MAX_SIZE ;
 int _FAT_fat_clearLinks (TYPE_1__*,int) ;
 int _FAT_fat_isValidCluster (TYPE_1__*,int) ;
 int _FAT_fat_linkFreeCluster (TYPE_1__*,scalar_t__) ;
 int _FAT_fat_trimChain (TYPE_1__*,int,unsigned int) ;
 int _FAT_file_extend_r (struct _reent*,TYPE_2__*) ;
 int _FAT_lock (int *) ;
 int _FAT_unlock (int *) ;

int _FAT_ftruncate_r (struct _reent *r, void *fd, off_t len) {
 FILE_STRUCT* file = (FILE_STRUCT*) fd;
 PARTITION* partition;
 int ret=0;
 uint32_t newSize = (uint32_t)len;

 if (len < 0) {

  r->_errno = EINVAL;
  return -1;
 }

 if ((sizeof(len) > 4) && len > (off_t)FILE_MAX_SIZE) {

  r->_errno = EFBIG;
  return -1;
 }

 if (!file || !file->inUse) {

  r->_errno = EBADF;
  return -1;
 }

 if (!file->write) {

  r->_errno = EINVAL;
  return -1;
 }

 partition = file->partition;
 _FAT_lock(&partition->lock);

 if (newSize > file->filesize) {

  FILE_POSITION savedPosition;
  uint32_t savedOffset;

  if (file->startCluster == CLUSTER_FREE) {
   uint32_t tempNextCluster = _FAT_fat_linkFreeCluster (partition, CLUSTER_FREE);
   if (!_FAT_fat_isValidCluster(partition, tempNextCluster)) {

    _FAT_unlock(&partition->lock);
    r->_errno = ENOSPC;
    return -1;
   }
   file->startCluster = tempNextCluster;

   file->rwPosition.cluster = file->startCluster;
   file->rwPosition.sector = 0;
   file->rwPosition.byte = 0;
  }

  savedPosition = file->rwPosition;
  savedOffset = file->currentPosition;

  file->currentPosition = newSize;

  if (!_FAT_file_extend_r (r, file)) {
   ret = -1;
  }

  if (file->append) {
   file->appendPosition = file->rwPosition;
  }

  file->rwPosition = savedPosition;
  file->currentPosition = savedOffset;
 } else if (newSize < file->filesize){

  if (len == 0) {

   _FAT_fat_clearLinks (partition, file->startCluster);
   file->startCluster = CLUSTER_FREE;

   file->appendPosition.cluster = CLUSTER_FREE;
   file->appendPosition.sector = 0;
   file->appendPosition.byte = 0;
  } else {

   unsigned int chainLength;
   uint32_t lastCluster;




   chainLength = ((newSize-1) / partition->bytesPerCluster) + 1;
   lastCluster = _FAT_fat_trimChain (partition, file->startCluster, chainLength);

   if (file->append) {
    file->appendPosition.byte = newSize % partition->bytesPerSector;

    if (newSize % partition->bytesPerCluster == 0) {

     file->appendPosition.sector = partition->sectorsPerCluster;
    } else {
     file->appendPosition.sector = (newSize % partition->bytesPerCluster) / partition->bytesPerSector;
    }
    file->appendPosition.cluster = lastCluster;
   }
  }
 } else {

 }

 file->filesize = newSize;
 file->modified = 1;

 _FAT_unlock(&partition->lock);
 return ret;
}
