
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct _reent {int _errno; } ;
struct TYPE_5__ {TYPE_1__* partition; int inUse; } ;
struct TYPE_4__ {int lock; } ;
typedef TYPE_2__ FILE_STRUCT ;


 int EBADF ;
 int _FAT_lock (int *) ;
 int _FAT_syncToDisc (TYPE_2__*) ;
 int _FAT_unlock (int *) ;

int _FAT_fsync_r (struct _reent *r, void *fd) {
 FILE_STRUCT* file = (FILE_STRUCT*) fd;
 int ret = 0;

 if (!file->inUse) {
  r->_errno = EBADF;
  return -1;
 }

 _FAT_lock(&file->partition->lock);

 ret = _FAT_syncToDisc (file);
 if (ret != 0) {
  r->_errno = ret;
  ret = -1;
 }

 _FAT_unlock(&file->partition->lock);

 return ret;
}
