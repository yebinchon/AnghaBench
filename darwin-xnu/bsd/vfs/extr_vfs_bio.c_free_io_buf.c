
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct bufattr {int dummy; } ;
typedef TYPE_2__* mount_t ;
typedef TYPE_3__* buf_t ;
struct TYPE_12__ {scalar_t__ bufs_iobufinuse; int bufs_iobufinuse_vdev; } ;
struct TYPE_11__ {int b_lflags; int b_attr; int b_flags; TYPE_1__* b_vp; } ;
struct TYPE_10__ {int mnt_iobufinuse; } ;
struct TYPE_9__ {TYPE_2__* v_mount; } ;


 int BL_IOBUF_VDEV ;
 int B_INVAL ;
 int FALSE ;
 int TRUE ;
 int binsheadfree (TYPE_3__*,int *,int) ;
 TYPE_7__ bufstats ;
 int bzero (int *,int) ;
 TYPE_2__* dead_mountp ;
 int iobuffer_mtxp ;
 int iobufqueue ;
 int lck_mtx_lock_spin (int ) ;
 int lck_mtx_unlock (int ) ;
 scalar_t__ need_iobuffer ;
 int panic (char*,TYPE_3__*) ;
 int wakeup (scalar_t__*) ;

void
free_io_buf(buf_t bp)
{
 int need_wakeup = 0;
 int free_for_virtualdev = FALSE;
 mount_t mp = ((void*)0);


 if (bp->b_lflags & BL_IOBUF_VDEV) {
  free_for_virtualdev = TRUE;
  if (bp->b_vp)
   mp = bp->b_vp->v_mount;
 }




 bp->b_vp = ((void*)0);
 bp->b_flags = B_INVAL;


 bzero (&bp->b_attr, sizeof(struct bufattr));

 lck_mtx_lock_spin(iobuffer_mtxp);

 binsheadfree(bp, &iobufqueue, -1);

 if (need_iobuffer) {
  need_iobuffer = 0;
  need_wakeup = 1;
 }
 if (bufstats.bufs_iobufinuse <= 0)
  panic("free_io_buf: bp(%p) - bufstats.bufs_iobufinuse < 0", bp);

 bufstats.bufs_iobufinuse--;

 if (free_for_virtualdev) {
  bufstats.bufs_iobufinuse_vdev--;
  if (mp && mp != dead_mountp)
   mp->mnt_iobufinuse--;
 }

 lck_mtx_unlock(iobuffer_mtxp);

 if (need_wakeup)
         wakeup(&need_iobuffer);
}
