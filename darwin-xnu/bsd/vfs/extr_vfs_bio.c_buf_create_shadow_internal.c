
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int caddr_t ;
typedef TYPE_1__* buf_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_11__ {int b_flags; int b_lflags; scalar_t__ b_data_ref; void (* b_iodone ) (TYPE_1__*,void*) ;uintptr_t b_datap; scalar_t__ b_shadow_ref; struct TYPE_11__* b_data_store; int b_bcount; int b_bufsize; struct TYPE_11__* b_shadow; int b_orig; void* b_transaction; int b_lblkno; int b_blkno; int b_vp; } ;


 int BL_EXTERNAL ;
 int BL_IOBUF ;
 int BL_IOBUF_ALLOC ;
 int BL_SHADOW ;
 int B_ASYNC ;
 int B_CALL ;
 int B_FUA ;
 int B_META ;
 int B_READ ;
 int B_ZALLOC ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 scalar_t__ FALSE ;
 int KERNEL_DEBUG (int,TYPE_1__*,scalar_t__,int ,TYPE_1__*,int ) ;
 TYPE_1__* alloc_io_buf (int ,int) ;
 int allocbuf (TYPE_1__*,int ) ;
 int bcopy (int ,int ,int ) ;
 int buf_mtxp ;
 int lck_mtx_lock_spin (int ) ;
 int lck_mtx_unlock (int ) ;
 int panic (char*,TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static buf_t
buf_create_shadow_internal(buf_t bp, boolean_t force_copy, uintptr_t external_storage, void (*iodone)(buf_t, void *), void *arg, int priv)
{
        buf_t io_bp;

 KERNEL_DEBUG(0xbbbbc000 | DBG_FUNC_START, bp, 0, 0, 0, 0);

 if ( !(bp->b_flags & B_META) || (bp->b_lflags & BL_IOBUF)) {

  KERNEL_DEBUG(0xbbbbc000 | DBG_FUNC_END, bp, 0, 0, 0, 0);
  return (((void*)0));
 }




 io_bp = alloc_io_buf(bp->b_vp, priv);

 io_bp->b_flags = bp->b_flags & (B_META | B_ZALLOC | B_ASYNC | B_READ | B_FUA);
 io_bp->b_blkno = bp->b_blkno;
 io_bp->b_lblkno = bp->b_lblkno;

 if (iodone) {
         io_bp->b_transaction = arg;
  io_bp->b_iodone = iodone;
  io_bp->b_flags |= B_CALL;
 }
 if (force_copy == FALSE) {
  io_bp->b_bcount = bp->b_bcount;
  io_bp->b_bufsize = bp->b_bufsize;

  if (external_storage) {
   io_bp->b_datap = external_storage;



  } else {
   io_bp->b_datap = bp->b_datap;



  }
  *(buf_t *)(&io_bp->b_orig) = bp;

  lck_mtx_lock_spin(buf_mtxp);

  io_bp->b_lflags |= BL_SHADOW;
  io_bp->b_shadow = bp->b_shadow;
  bp->b_shadow = io_bp;
  bp->b_shadow_ref++;







  lck_mtx_unlock(buf_mtxp);
 } else {
  if (external_storage) {



   io_bp->b_bcount = bp->b_bcount;
   io_bp->b_bufsize = bp->b_bufsize;
   io_bp->b_datap = external_storage;
  } else {
   allocbuf(io_bp, bp->b_bcount);

   io_bp->b_lflags |= BL_IOBUF_ALLOC;
  }
  bcopy((caddr_t)bp->b_datap, (caddr_t)io_bp->b_datap, bp->b_bcount);




 }
 KERNEL_DEBUG(0xbbbbc000 | DBG_FUNC_END, bp, bp->b_shadow_ref, 0, io_bp, 0);

 return (io_bp);
}
