
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vfsioattr {int io_max_swappin_available; int io_flags; int io_devblocksize; int io_maxsegwritesize; int io_maxsegreadsize; int io_segwritecnt; int io_segreadcnt; int io_maxwritecnt; int io_maxreadcnt; } ;
typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_max_swappin_available; int mnt_ioflags; int mnt_devblocksize; int mnt_maxsegwritesize; int mnt_maxsegreadsize; int mnt_segwritecnt; int mnt_segreadcnt; int mnt_maxwritecnt; int mnt_maxreadcnt; } ;



void
vfs_setioattr(mount_t mp, struct vfsioattr * ioattrp)
{
        if (mp == ((void*)0))
         return;
        mp->mnt_maxreadcnt = ioattrp->io_maxreadcnt;
 mp->mnt_maxwritecnt = ioattrp->io_maxwritecnt;
 mp->mnt_segreadcnt = ioattrp->io_segreadcnt;
 mp->mnt_segwritecnt = ioattrp->io_segwritecnt;
 mp->mnt_maxsegreadsize = ioattrp->io_maxsegreadsize;
 mp->mnt_maxsegwritesize = ioattrp->io_maxsegwritesize;
 mp->mnt_devblocksize = ioattrp->io_devblocksize;
 mp->mnt_ioflags = ioattrp->io_flags;
 mp->mnt_max_swappin_available = ioattrp->io_max_swappin_available;
}
