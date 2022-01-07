
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct clios {int dummy; } ;
typedef int off_t ;
typedef TYPE_1__* buf_t ;
struct TYPE_8__ {int b_flags; int b_bcount; int b_upl; int b_vp; scalar_t__ b_lblkno; } ;


 int B_PASSIVE ;
 int B_READ ;
 int CL_ASYNC ;
 int CL_PASSIVE ;
 int CL_READ ;
 int DBG_FSRW ;
 int DBG_FUNC_START ;
 int FSDBG_CODE (int ,int) ;
 int KERNEL_DEBUG (int,TYPE_1__*,int,int ,int,int ) ;
 int cluster_io (int ,int ,int ,int ,int ,int,TYPE_1__*,struct clios*,int (*) (TYPE_1__*,void*),void*) ;
 int ubc_blktooff (int ,scalar_t__) ;

int
cluster_bp_ext(buf_t bp, int (*callback)(buf_t, void *), void *callback_arg)
{
        off_t f_offset;
 int flags;

 KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 19)) | DBG_FUNC_START,
       bp, (int)bp->b_lblkno, bp->b_bcount, bp->b_flags, 0);

 if (bp->b_flags & B_READ)
         flags = CL_ASYNC | CL_READ;
 else
         flags = CL_ASYNC;
 if (bp->b_flags & B_PASSIVE)
  flags |= CL_PASSIVE;

 f_offset = ubc_blktooff(bp->b_vp, bp->b_lblkno);

        return (cluster_io(bp->b_vp, bp->b_upl, 0, f_offset, bp->b_bcount, flags, bp, (struct clios *)((void*)0), callback, callback_arg));
}
