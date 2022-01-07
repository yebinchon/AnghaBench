
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct bufattr {int dummy; } ;
typedef TYPE_1__* buf_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_12__ {int b_tag; int b_flags; int b_lflags; size_t b_whichq; uintptr_t b_datap; int b_attr; scalar_t__ b_validend; scalar_t__ b_validoff; scalar_t__ b_dirtyend; scalar_t__ b_dirtyoff; scalar_t__ b_bcount; scalar_t__ b_resid; scalar_t__ b_error; int * b_iodone; scalar_t__ b_lblkno; scalar_t__ b_blkno; int b_dev; scalar_t__ b_redundancy_flags; void* b_owner; void* b_fsprivate; void* b_upl; scalar_t__ b_bufsize; scalar_t__ b_vp; } ;


 int BLISTNONE (TYPE_1__*) ;
 int BL_BUSY ;
 int BL_WANTDEALLOC ;
 size_t BQ_EMPTY ;
 size_t BQ_LAUNDRY ;
 int B_AGE ;
 int B_ASYNC ;
 int B_DELWRI ;
 int B_FUA ;
 int B_HDRALLOC ;
 int B_LOCKED ;
 int B_META ;
 int B_NOCACHE ;
 int B_ZALLOC ;
 int CLR (int,int) ;
 scalar_t__ ISSET (int,int) ;
 int NODEV ;
 int SET (int,int) ;
 int THREAD_CONTINUE_NULL ;
 int TR_BRELSE ;
 int binshash (TYPE_1__*,int *) ;
 int binsheadfree (TYPE_1__*,int *,size_t) ;
 int bmovelaundry (TYPE_1__*) ;
 int brelvp_locked (TYPE_1__*) ;
 int bremfree_locked (TYPE_1__*) ;
 int bremhash (TYPE_1__*) ;
 int buf_busycount ;
 int buf_free_meta_store (TYPE_1__*) ;
 int buf_mtxp ;
 int buf_release_credentials (TYPE_1__*) ;
 int * bufqueues ;
 int bzero (int *,int) ;
 void* current_thread () ;
 int invalhash ;
 int lck_mtx_lock_spin (int ) ;
 int lck_mtx_unlock (int ) ;
 int pack (scalar_t__,scalar_t__) ;
 int thread_block (int ) ;
 int trace (int ,int ,scalar_t__) ;
 int wakeup (int *) ;

int
bcleanbuf(buf_t bp, boolean_t discard)
{

 bremfree_locked(bp);
 if (ISSET(bp->b_flags, B_DELWRI)) {
  if (discard) {
   SET(bp->b_lflags, BL_WANTDEALLOC);
  }

  bmovelaundry(bp);

  lck_mtx_unlock(buf_mtxp);

  wakeup(&bufqueues[BQ_LAUNDRY]);



  (void)thread_block(THREAD_CONTINUE_NULL);

  lck_mtx_lock_spin(buf_mtxp);

  return (1);
 }







 SET(bp->b_lflags, BL_BUSY);
 buf_busycount++;

 bremhash(bp);




 if (bp->b_vp)
  brelvp_locked(bp);

 lck_mtx_unlock(buf_mtxp);

 BLISTNONE(bp);

 if (ISSET(bp->b_flags, B_META))
  buf_free_meta_store(bp);

 trace(TR_BRELSE, pack(bp->b_vp, bp->b_bufsize), bp->b_lblkno);

 buf_release_credentials(bp);


 if (discard) {
  lck_mtx_lock_spin(buf_mtxp);
  CLR(bp->b_flags, (B_META | B_ZALLOC | B_DELWRI | B_LOCKED | B_AGE | B_ASYNC | B_NOCACHE | B_FUA));
  bp->b_whichq = BQ_EMPTY;
  binshash(bp, &invalhash);
  binsheadfree(bp, &bufqueues[BQ_EMPTY], BQ_EMPTY);
  CLR(bp->b_lflags, BL_BUSY);
  buf_busycount--;
 } else {

  bp->b_bufsize = 0;
  bp->b_datap = (uintptr_t)((void*)0);
  bp->b_upl = (void *)((void*)0);
  bp->b_fsprivate = (void *)((void*)0);
  bp->b_lflags = BL_BUSY;
  bp->b_flags = (bp->b_flags & B_HDRALLOC);
  bp->b_redundancy_flags = 0;
  bp->b_dev = NODEV;
  bp->b_blkno = bp->b_lblkno = 0;
  bp->b_iodone = ((void*)0);
  bp->b_error = 0;
  bp->b_resid = 0;
  bp->b_bcount = 0;
  bp->b_dirtyoff = bp->b_dirtyend = 0;
  bp->b_validoff = bp->b_validend = 0;
  bzero(&bp->b_attr, sizeof(struct bufattr));

  lck_mtx_lock_spin(buf_mtxp);
 }
 return (0);
}
