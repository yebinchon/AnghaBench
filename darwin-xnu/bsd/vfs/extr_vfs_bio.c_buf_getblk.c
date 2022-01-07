
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_12__ ;


typedef TYPE_3__* vnode_t ;
typedef int vm_offset_t ;
typedef void* upl_t ;
typedef int upl_page_info_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct bufhashhdr {int dummy; } ;
typedef int off_t ;
typedef int kern_return_t ;
typedef int daddr64_t ;
typedef TYPE_4__* buf_t ;
struct TYPE_29__ {int b_tag; int b_bcount; int b_bufsize; int b_lblkno; int b_blkno; int b_validend; int b_dirtyend; int * b_stackgetblk; int b_flags; int b_datap; int b_dirtyoff; int b_validoff; void* b_upl; TYPE_3__* b_vp; int b_owner; int b_lflags; } ;
struct TYPE_28__ {TYPE_2__* v_mount; } ;
struct TYPE_26__ {int f_fstypename; } ;
struct TYPE_27__ {TYPE_1__ mnt_vfsstat; } ;
struct TYPE_25__ {int bufs_miss; int bufs_vmhits; int bufs_incore; int bufs_busyincore; } ;



 int BLK_ONLYVALID ;


 int BL_BUSY ;
 int BL_WANTED ;
 int BQ_EMPTY ;
 struct bufhashhdr* BUFHASH (TYPE_3__*,int) ;
 int B_CACHE ;
 int B_DELWRI ;
 int B_DONE ;
 int B_INVAL ;
 int B_META ;
 int B_WASDIRTY ;
 int CLR (int ,int) ;
 int DBG_FSRW ;
 int DBG_FUNC_END ;
 int DBG_FUNC_NONE ;
 int DBG_FUNC_START ;
 int EWOULDBLOCK ;
 int FALSE ;
 int FSDBG_CODE (int ,int) ;
 scalar_t__ ISSET (int ,int) ;
 int KERNEL_DEBUG (int,...) ;
 int KERN_SUCCESS ;
 int NSEC_PER_USEC ;
 int OSAddAtomicLong (int,int *) ;
 int OSBacktrace (int *,int) ;
 int PAGE_SIZE ;
 int PCATCH ;
 int PDROP ;
 int PRIBIO ;
 int SET (int ,int) ;
 int TRUE ;
 scalar_t__ UBCINFOEXISTS (TYPE_3__*) ;
 int UPL_PRECIOUS ;
 int UPL_WILL_MODIFY ;
 int VM_KERN_MEMORY_FILE ;
 int VNODE_READ ;
 int VNODE_WRITE ;
 int VNOP_BLOCKMAP (TYPE_3__*,int ,int,int*,size_t*,int *,int,int *) ;
 int allocbuf (TYPE_4__*,int) ;
 int bgetvp_locked (TYPE_3__*,TYPE_4__*) ;
 int binshash (TYPE_4__*,struct bufhashhdr*) ;
 int bremfree_locked (TYPE_4__*) ;
 int buf_brelse (TYPE_4__*) ;
 int buf_busycount ;
 int buf_bwrite (TYPE_4__*) ;
 int buf_mtxp ;
 TYPE_12__ bufstats ;
 int current_thread () ;
 TYPE_4__* getnewbuf (int,int,int*) ;
 TYPE_4__* incore_locked (TYPE_3__*,int,struct bufhashhdr*) ;
 struct bufhashhdr invalhash ;
 int lck_mtx_lock_spin (int ) ;
 int lck_mtx_unlock (int ) ;
 int msleep (TYPE_4__*,int ,int,char*,struct timespec*) ;
 int panic (char*,...) ;
 int strcmp (int ,char const*) ;
 int ubc_blktooff (TYPE_3__*,int) ;
 int ubc_create_upl_kernel (TYPE_3__*,int ,int,void**,int **,int,int ) ;
 int ubc_upl_map (void*,int *) ;
 int upl_dirty_page (int *,int ) ;
 int upl_ubc_alias_set (void*,uintptr_t,uintptr_t) ;
 int upl_valid_page (int *,int ) ;
 scalar_t__ vnode_isreg (TYPE_3__*) ;

buf_t
buf_getblk(vnode_t vp, daddr64_t blkno, int size, int slpflag, int slptimeo, int operation)
{
 buf_t bp;
 int err;
 upl_t upl;
 upl_page_info_t *pl;
 kern_return_t kret;
 int ret_only_valid;
 struct timespec ts;
 int upl_flags;
 struct bufhashhdr *dp;

 KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 386)) | DBG_FUNC_START,
       (uintptr_t)(blkno * PAGE_SIZE), size, operation, 0, 0);

 ret_only_valid = operation & BLK_ONLYVALID;
 operation &= ~BLK_ONLYVALID;
 dp = BUFHASH(vp, blkno);
start:
 lck_mtx_lock_spin(buf_mtxp);

 if ((bp = incore_locked(vp, blkno, dp))) {



  if (ISSET(bp->b_lflags, BL_BUSY)) {



   switch (operation) {
   case 129:
   case 128:
   case 130:
    SET(bp->b_lflags, BL_WANTED);
    bufstats.bufs_busyincore++;





    ts.tv_sec = (slptimeo/1000);
    ts.tv_nsec = (slptimeo % 1000) * 10 * NSEC_PER_USEC * 1000;

    KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 396)) | DBG_FUNC_NONE,
          (uintptr_t)blkno, size, operation, 0, 0);

    err = msleep(bp, buf_mtxp, slpflag | PDROP | (PRIBIO + 1), "buf_getblk", &ts);





    if (err && ((slpflag & PCATCH) || ((err == EWOULDBLOCK) && slptimeo)))
     return (((void*)0));
    goto start;


   default:



    panic("getblk: paging or unknown operation for incore busy buffer - %x\n", operation);

    break;
   }
  } else {
   int clear_bdone;




   SET(bp->b_lflags, BL_BUSY);
   SET(bp->b_flags, B_CACHE);
   buf_busycount++;

   bremfree_locked(bp);
   bufstats.bufs_incore++;

   lck_mtx_unlock(buf_mtxp);




   if ( (bp->b_upl) )
           panic("buffer has UPL, but not marked BUSY: %p", bp);

   clear_bdone = FALSE;
   if (!ret_only_valid) {
    if (operation == 130 && bp->b_bcount < size) {





     if (ISSET(bp->b_flags, B_DELWRI)) {
      CLR(bp->b_flags, B_CACHE);
      buf_bwrite(bp);
      goto start;
     }





     clear_bdone = TRUE;
    }

    if (bp->b_bufsize != size)
     allocbuf(bp, size);
   }

   upl_flags = 0;
   switch (operation) {
   case 128:





    upl_flags |= UPL_WILL_MODIFY;
   case 129:
    upl_flags |= UPL_PRECIOUS;
           if (UBCINFOEXISTS(bp->b_vp) && bp->b_bufsize) {
     kret = ubc_create_upl_kernel(vp,
             ubc_blktooff(vp, bp->b_lblkno),
             bp->b_bufsize,
             &upl,
             &pl,
             upl_flags,
             VM_KERN_MEMORY_FILE);
     if (kret != KERN_SUCCESS)
             panic("Failed to create UPL");

     bp->b_upl = upl;

     if (upl_valid_page(pl, 0)) {
             if (upl_dirty_page(pl, 0))
              SET(bp->b_flags, B_WASDIRTY);
      else
              CLR(bp->b_flags, B_WASDIRTY);
     } else
             CLR(bp->b_flags, (B_DONE | B_CACHE | B_WASDIRTY | B_DELWRI));

     kret = ubc_upl_map(upl, (vm_offset_t*)&(bp->b_datap));

     if (kret != KERN_SUCCESS)
             panic("getblk: ubc_upl_map() failed with (%d)", kret);
    }
    break;

   case 130:




    break;

   default:
    panic("getblk: paging or unknown operation for incore buffer- %d\n", operation);

    break;
   }

   if (clear_bdone)
    CLR(bp->b_flags, B_DONE);
  }
 } else {
  int queue = BQ_EMPTY;

  if (ret_only_valid) {
   lck_mtx_unlock(buf_mtxp);
   return (((void*)0));
  }
  if ((vnode_isreg(vp) == 0) || (UBCINFOEXISTS(vp) == 0) )
   operation = 130;

  if ((bp = getnewbuf(slpflag, slptimeo, &queue)) == ((void*)0))
   goto start;
  if (incore_locked(vp, blkno, dp)) {
   SET(bp->b_flags, B_INVAL);
   binshash(bp, &invalhash);

   lck_mtx_unlock(buf_mtxp);

   buf_brelse(bp);
   goto start;
  }
  if (operation == 130)
          SET(bp->b_flags, B_META);

  bp->b_blkno = bp->b_lblkno = blkno;
  bp->b_vp = vp;




  binshash(bp, BUFHASH(vp, blkno));

  bgetvp_locked(vp, bp);

  lck_mtx_unlock(buf_mtxp);

  allocbuf(bp, size);

  upl_flags = 0;
  switch (operation) {
  case 130:
          OSAddAtomicLong(1, &bufstats.bufs_miss);
   break;

  case 128:





   upl_flags |= UPL_WILL_MODIFY;
  case 129:
    { off_t f_offset;
   size_t contig_bytes;
   int bmap_flags;
   if ( (bp->b_upl) )
    panic("bp already has UPL: %p",bp);

   f_offset = ubc_blktooff(vp, blkno);

   upl_flags |= UPL_PRECIOUS;
   kret = ubc_create_upl_kernel(vp,
           f_offset,
           bp->b_bufsize,
           &upl,
           &pl,
           upl_flags,
           VM_KERN_MEMORY_FILE);

   if (kret != KERN_SUCCESS)
    panic("Failed to create UPL");



   bp->b_upl = upl;

   if (upl_valid_page(pl, 0)) {

           if (operation == 129)
            bmap_flags = VNODE_READ;
    else
            bmap_flags = VNODE_WRITE;

    SET(bp->b_flags, B_CACHE | B_DONE);

           OSAddAtomicLong(1, &bufstats.bufs_vmhits);

    bp->b_validoff = 0;
    bp->b_dirtyoff = 0;

    if (upl_dirty_page(pl, 0)) {

            SET(bp->b_flags, B_WASDIRTY);

     bp->b_validend = bp->b_bcount;
     bp->b_dirtyend = bp->b_bcount;
    } else {

     bp->b_validend = bp->b_bcount;
     bp->b_dirtyend = 0;
    }




    if (VNOP_BLOCKMAP(vp, f_offset, bp->b_bcount, &bp->b_blkno, &contig_bytes, ((void*)0), bmap_flags, ((void*)0)))
            panic("getblk: VNOP_BLOCKMAP failed");






    if ((long)contig_bytes < bp->b_bcount)
            bp->b_blkno = bp->b_lblkno;
   } else {
           OSAddAtomicLong(1, &bufstats.bufs_miss);
   }
   kret = ubc_upl_map(upl, (vm_offset_t *)&(bp->b_datap));

   if (kret != KERN_SUCCESS)
           panic("getblk: ubc_upl_map() failed with (%d)", kret);
   break;
    }
  default:
   panic("getblk: paging or unknown operation - %x", operation);

   break;
  }
 }

 KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 386)) | DBG_FUNC_END,
       bp, bp->b_datap, bp->b_flags, 3, 0);




 return (bp);
}
