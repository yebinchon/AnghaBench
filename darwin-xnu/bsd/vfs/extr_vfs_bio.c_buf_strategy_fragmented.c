
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef size_t off_t ;
typedef int daddr64_t ;
typedef int caddr_t ;
typedef TYPE_2__* buf_t ;
struct TYPE_17__ {int b_blkno; int b_lblkno; int b_bcount; int b_flags; size_t b_bufsize; size_t b_resid; scalar_t__ b_datap; } ;
struct TYPE_16__ {int v_numoutput; } ;


 int B_READ ;
 int ISSET (int,int) ;
 int OSAddAtomic (int,int *) ;
 int VNODE_READ ;
 int VNODE_WRITE ;
 int VNOP_BLOCKMAP (TYPE_1__*,size_t,int,int*,size_t*,int *,int,int *) ;
 int VNOP_STRATEGY (TYPE_2__*) ;
 TYPE_2__* alloc_io_buf (TYPE_1__*,int ) ;
 int buf_biodone (TYPE_2__*) ;
 scalar_t__ buf_biowait (TYPE_2__*) ;
 int buf_free (TYPE_2__*) ;
 int buf_reset (TYPE_2__*,int) ;
 int buf_seterror (TYPE_2__*,int) ;
 TYPE_1__* buf_vnode (TYPE_2__*) ;
 int bzero (int ,int) ;

__attribute__((used)) static int
buf_strategy_fragmented(vnode_t devvp, buf_t bp, off_t f_offset, size_t contig_bytes)
{
 vnode_t vp = buf_vnode(bp);
 buf_t io_bp;
 int io_direction;
 int io_resid;
 size_t io_contig_bytes;
        daddr64_t io_blkno;
 int error = 0;
 int bmap_flags;






 io_blkno = bp->b_blkno;




 bp->b_blkno = bp->b_lblkno;




 io_bp = alloc_io_buf(devvp, 0);

 io_bp->b_lblkno = bp->b_lblkno;
 io_bp->b_datap = bp->b_datap;
 io_resid = bp->b_bcount;
        io_direction = bp->b_flags & B_READ;
 io_contig_bytes = contig_bytes;

 if (bp->b_flags & B_READ)
         bmap_flags = VNODE_READ;
 else
         bmap_flags = VNODE_WRITE;

 for (;;) {
  if (io_blkno == -1)



          bzero((caddr_t)io_bp->b_datap, (int)io_contig_bytes);
  else {
          io_bp->b_bcount = io_contig_bytes;
   io_bp->b_bufsize = io_contig_bytes;
   io_bp->b_resid = io_contig_bytes;
   io_bp->b_blkno = io_blkno;

   buf_reset(io_bp, io_direction);





   if (!ISSET(bp->b_flags, B_READ))
           OSAddAtomic(1, &devvp->v_numoutput);

   if ((error = VNOP_STRATEGY(io_bp)))
           break;
   if ((error = (int)buf_biowait(io_bp)))
           break;
   if (io_bp->b_resid) {
           io_resid -= (io_contig_bytes - io_bp->b_resid);
    break;
   }
  }
  if ((io_resid -= io_contig_bytes) == 0)
          break;
  f_offset += io_contig_bytes;
  io_bp->b_datap += io_contig_bytes;




  if ((error = VNOP_BLOCKMAP(vp, f_offset, io_resid, &io_blkno, &io_contig_bytes, ((void*)0), bmap_flags, ((void*)0))))
          break;
 }
 buf_free(io_bp);

 if (error)
         buf_seterror(bp, error);
 bp->b_resid = io_resid;



 buf_biodone(bp);

 return error;
}
