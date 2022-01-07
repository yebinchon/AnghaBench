
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct _reent {int _errno; } ;
struct TYPE_9__ {int inUse; TYPE_3__* partition; TYPE_2__* nextOpenFile; TYPE_1__* prevOpenFile; scalar_t__ write; } ;
struct TYPE_8__ {int openFileCount; int lock; TYPE_2__* firstOpenFile; } ;
struct TYPE_7__ {TYPE_1__* prevOpenFile; } ;
struct TYPE_6__ {TYPE_2__* nextOpenFile; } ;
typedef TYPE_4__ FILE_STRUCT ;


 int EBADF ;
 int _FAT_lock (int *) ;
 int _FAT_syncToDisc (TYPE_4__*) ;
 int _FAT_unlock (int *) ;

int _FAT_close_r (struct _reent *r, void *fd) {
 FILE_STRUCT* file = (FILE_STRUCT*) fd;
 int ret = 0;

 if (!file->inUse) {
  r->_errno = EBADF;
  return -1;
 }

 _FAT_lock(&file->partition->lock);

 if (file->write) {
  ret = _FAT_syncToDisc (file);
  if (ret != 0) {
   r->_errno = ret;
   ret = -1;
  }
 }

 file->inUse = 0;


 file->partition->openFileCount -= 1;
 if (file->nextOpenFile) {
  file->nextOpenFile->prevOpenFile = file->prevOpenFile;
 }
 if (file->prevOpenFile) {
  file->prevOpenFile->nextOpenFile = file->nextOpenFile;
 } else {
  file->partition->firstOpenFile = file->nextOpenFile;
 }

 _FAT_unlock(&file->partition->lock);

 return ret;
}
