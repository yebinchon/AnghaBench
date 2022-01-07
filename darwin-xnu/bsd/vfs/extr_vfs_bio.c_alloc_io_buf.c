
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct bufattr {int dummy; } ;
typedef TYPE_2__* mount_t ;
typedef TYPE_3__* buf_t ;
struct TYPE_15__ {scalar_t__ bufs_iobufinuse_vdev; scalar_t__ bufs_iobufinuse; scalar_t__ bufs_iobufmax; int bufs_iobufsleeps; } ;
struct TYPE_14__ {TYPE_3__* tqh_first; } ;
struct TYPE_13__ {int b_lflags; int b_tag; int b_dev; int b_attr; TYPE_1__* b_vp; void* b_fsprivate; int * b_upl; scalar_t__ b_bufsize; scalar_t__ b_bcount; scalar_t__ b_resid; scalar_t__ b_error; int * b_iodone; int b_owner; scalar_t__ b_lblkno; scalar_t__ b_blkno; scalar_t__ b_redundancy_flags; scalar_t__ b_flags; scalar_t__ b_datap; int * b_proc; scalar_t__ b_timestamp; } ;
struct TYPE_12__ {int mnt_kern_flag; scalar_t__ mnt_iobufinuse; } ;
struct TYPE_11__ {scalar_t__ v_type; int v_rdev; TYPE_2__* v_mount; } ;


 int BL_BUSY ;
 int BL_IOBUF ;
 int BL_IOBUF_VDEV ;
 int FALSE ;
 int MNTK_VIRTUALDEV ;
 scalar_t__ MNT_VIRTUALDEV_MAX_IOBUFS ;
 int NODEV ;
 scalar_t__ NRESERVEDIOBUFS ;
 int PRIBIO ;
 int PSPIN ;
 int TAILQ_REMOVE (TYPE_4__*,TYPE_3__*,int ) ;
 int TRUE ;
 scalar_t__ VBLK ;
 scalar_t__ VCHR ;
 scalar_t__ VIRTUALDEV_MAX_IOBUFS ;
 int b_freelist ;
 TYPE_6__ bufstats ;
 int bzero (int *,int) ;
 int current_thread () ;
 TYPE_2__* dead_mountp ;
 int iobuffer_mtxp ;
 TYPE_4__ iobufqueue ;
 int lck_mtx_lock_spin (int ) ;
 int lck_mtx_unlock (int ) ;
 int msleep (int*,int ,int,char const*,int *) ;
 int need_iobuffer ;
 scalar_t__ niobuf_headers ;

buf_t
alloc_io_buf(vnode_t vp, int priv)
{
 buf_t bp;
 mount_t mp = ((void*)0);
 int alloc_for_virtualdev = FALSE;

 lck_mtx_lock_spin(iobuffer_mtxp);
 if (vp && ((mp = vp->v_mount)) && mp != dead_mountp &&
     mp->mnt_kern_flag & MNTK_VIRTUALDEV) {
  alloc_for_virtualdev = TRUE;
  while ((!priv && mp->mnt_iobufinuse > MNT_VIRTUALDEV_MAX_IOBUFS) ||
      bufstats.bufs_iobufinuse_vdev > VIRTUALDEV_MAX_IOBUFS) {
   bufstats.bufs_iobufsleeps++;

   need_iobuffer = 1;
   (void)msleep(&need_iobuffer, iobuffer_mtxp,
       PSPIN | (PRIBIO+1), (const char *)"alloc_io_buf (1)",
       ((void*)0));
  }
 }

 while (((niobuf_headers - NRESERVEDIOBUFS < bufstats.bufs_iobufinuse) && !priv) ||
        (bp = iobufqueue.tqh_first) == ((void*)0)) {
  bufstats.bufs_iobufsleeps++;

  need_iobuffer = 1;
  (void)msleep(&need_iobuffer, iobuffer_mtxp, PSPIN | (PRIBIO+1),
      (const char *)"alloc_io_buf (2)", ((void*)0));
 }
 TAILQ_REMOVE(&iobufqueue, bp, b_freelist);

 bufstats.bufs_iobufinuse++;
 if (bufstats.bufs_iobufinuse > bufstats.bufs_iobufmax)
  bufstats.bufs_iobufmax = bufstats.bufs_iobufinuse;

 if (alloc_for_virtualdev) {
  mp->mnt_iobufinuse++;
  bufstats.bufs_iobufinuse_vdev++;
 }

 lck_mtx_unlock(iobuffer_mtxp);







 bp->b_timestamp = 0;
 bp->b_proc = ((void*)0);

 bp->b_datap = 0;
 bp->b_flags = 0;
 bp->b_lflags = BL_BUSY | BL_IOBUF;
 if (alloc_for_virtualdev)
  bp->b_lflags |= BL_IOBUF_VDEV;
 bp->b_redundancy_flags = 0;
 bp->b_blkno = bp->b_lblkno = 0;




 bp->b_iodone = ((void*)0);
 bp->b_error = 0;
 bp->b_resid = 0;
 bp->b_bcount = 0;
 bp->b_bufsize = 0;
 bp->b_upl = ((void*)0);
 bp->b_fsprivate = (void *)((void*)0);
 bp->b_vp = vp;
 bzero(&bp->b_attr, sizeof(struct bufattr));

 if (vp && (vp->v_type == VBLK || vp->v_type == VCHR))
  bp->b_dev = vp->v_rdev;
 else
  bp->b_dev = NODEV;

 return (bp);
}
