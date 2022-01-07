
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct stat {int st_size; scalar_t__ st_ino; } ;
struct _reent {int _errno; } ;
typedef scalar_t__ ino_t ;
struct TYPE_10__ {int dataEnd; int dataStart; } ;
struct TYPE_9__ {int inUse; int filesize; scalar_t__ startCluster; int dirEntryEnd; int dirEntryStart; TYPE_1__* partition; } ;
struct TYPE_8__ {int lock; } ;
typedef TYPE_1__ PARTITION ;
typedef TYPE_2__ FILE_STRUCT ;
typedef TYPE_3__ DIR_ENTRY ;


 int EBADF ;
 int EIO ;
 int _FAT_directory_entryFromPosition (TYPE_1__*,TYPE_3__*) ;
 int _FAT_directory_entryStat (TYPE_1__*,TYPE_3__*,struct stat*) ;
 int _FAT_lock (int *) ;
 int _FAT_unlock (int *) ;

int _FAT_fstat_r (struct _reent *r, void *fd, struct stat *st) {
 FILE_STRUCT* file = (FILE_STRUCT*) fd;
 PARTITION* partition;
 DIR_ENTRY fileEntry;

 if ((file == ((void*)0)) || (file->inUse == 0)) {

  r->_errno = EBADF;
  return -1;
 }

 partition = file->partition;
 _FAT_lock(&partition->lock);


 fileEntry.dataStart = file->dirEntryStart;
 fileEntry.dataEnd = file->dirEntryEnd;

 if (!_FAT_directory_entryFromPosition (partition, &fileEntry)) {
  _FAT_unlock(&partition->lock);
  r->_errno = EIO;
  return -1;
 }


 _FAT_directory_entryStat (partition, &fileEntry, st);


   st->st_ino = (ino_t)(file->startCluster);
 st->st_size = file->filesize;

 _FAT_unlock(&partition->lock);
 return 0;
}
