
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vfsioattr {int io_segreadcnt; int io_segwritecnt; scalar_t__ io_max_swappin_available; scalar_t__ io_flags; int io_devblocksize; void* io_maxsegwritesize; void* io_maxsegreadsize; void* io_maxwritecnt; void* io_maxreadcnt; int ** io_reserved; } ;
typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_segreadcnt; int mnt_segwritecnt; scalar_t__ mnt_max_swappin_available; scalar_t__ mnt_ioflags; int mnt_devblocksize; void* mnt_maxsegwritesize; void* mnt_maxsegreadsize; void* mnt_maxwritecnt; void* mnt_maxreadcnt; } ;


 int DEV_BSIZE ;
 void* MAXPHYS ;

void
vfs_ioattr(mount_t mp, struct vfsioattr *ioattrp)
{
 ioattrp->io_reserved[0] = ((void*)0);
 ioattrp->io_reserved[1] = ((void*)0);
 if (mp == ((void*)0)) {
  ioattrp->io_maxreadcnt = MAXPHYS;
  ioattrp->io_maxwritecnt = MAXPHYS;
  ioattrp->io_segreadcnt = 32;
  ioattrp->io_segwritecnt = 32;
  ioattrp->io_maxsegreadsize = MAXPHYS;
  ioattrp->io_maxsegwritesize = MAXPHYS;
  ioattrp->io_devblocksize = DEV_BSIZE;
  ioattrp->io_flags = 0;
  ioattrp->io_max_swappin_available = 0;
 } else {
  ioattrp->io_maxreadcnt = mp->mnt_maxreadcnt;
  ioattrp->io_maxwritecnt = mp->mnt_maxwritecnt;
  ioattrp->io_segreadcnt = mp->mnt_segreadcnt;
  ioattrp->io_segwritecnt = mp->mnt_segwritecnt;
  ioattrp->io_maxsegreadsize = mp->mnt_maxsegreadsize;
  ioattrp->io_maxsegwritesize = mp->mnt_maxsegwritesize;
  ioattrp->io_devblocksize = mp->mnt_devblocksize;
  ioattrp->io_flags = mp->mnt_ioflags;
  ioattrp->io_max_swappin_available = mp->mnt_max_swappin_available;
 }
}
