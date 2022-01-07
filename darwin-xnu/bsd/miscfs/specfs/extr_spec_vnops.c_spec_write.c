
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int64_t ;
struct vnop_write_args {int a_ioflag; struct uio* a_uio; struct vnode* a_vp; } ;
struct TYPE_5__ {TYPE_1__* vu_specinfo; } ;
struct vnode {int v_type; int v_specsize; int v_specdevsize; int v_rdev; TYPE_2__ v_un; } ;
struct uio {scalar_t__ uio_rw; int uio_offset; int uio_segflg; } ;
struct buf {int dummy; } ;
struct _throttle_io_info_t {int throttle_last_write_timestamp; } ;
typedef int dev_t ;
typedef int daddr64_t ;
struct TYPE_6__ {int (* d_write ) (int ,struct uio*,int) ;int d_type; } ;
struct TYPE_4__ {size_t si_devbsdunit; int si_isssd; int si_throttleable; } ;


 int BLK_WRITE ;
 int D_DISK ;
 int EINVAL ;
 int IO_SYNC ;
 int NOCRED ;
 int PAGE_SIZE ;
 int TRUE ;
 scalar_t__ UIO_SEG_IS_USER_SPACE (int ) ;
 scalar_t__ UIO_WRITE ;


 struct _throttle_io_info_t* _throttle_io_info ;
 int buf_bawrite (struct buf*) ;
 int buf_bdwrite (struct buf*) ;
 scalar_t__ buf_bread (struct vnode*,int ,int,int ,struct buf**) ;
 int buf_brelse (struct buf*) ;
 int buf_bwrite (struct buf*) ;
 scalar_t__ buf_dataptr (struct buf*) ;
 scalar_t__ buf_error (struct buf*) ;
 struct buf* buf_getblk (struct vnode*,int ,int,int ,int ,int ) ;
 int buf_markaged (struct buf*) ;
 int buf_resid (struct buf*) ;
 TYPE_3__* cdevsw ;
 size_t major (int ) ;
 int microuptime (int *) ;
 int min (int,int ) ;
 int panic (char*) ;
 int stub1 (int ,struct uio*,int) ;
 int throttle_info_end_io_internal (struct _throttle_io_info_t*,int) ;
 int throttle_info_update_internal (struct _throttle_io_info_t*,int *,int ,int ,int ,int *) ;
 int uio_resid (struct uio*) ;
 int uiomove (char*,int,struct uio*) ;

int
spec_write(struct vnop_write_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct uio *uio = ap->a_uio;
 struct buf *bp;
 daddr64_t bn;
 int bsize, blkmask, bscale;
 int io_sync;
 int devBlockSize=0;
 int n, on;
 int error = 0;
 dev_t dev;
 switch (vp->v_type) {

 case 128:
  {
   struct _throttle_io_info_t *throttle_info = ((void*)0);
   int thread_throttle_level;
                if (cdevsw[major(vp->v_rdev)].d_type == D_DISK && vp->v_un.vu_specinfo->si_throttleable) {
   throttle_info = &_throttle_io_info[vp->v_un.vu_specinfo->si_devbsdunit];

    thread_throttle_level = throttle_info_update_internal(throttle_info, ((void*)0), 0, vp->v_un.vu_specinfo->si_isssd, TRUE, ((void*)0));

   microuptime(&throttle_info->throttle_last_write_timestamp);
                }
  error = (*cdevsw[major(vp->v_rdev)].d_write)
   (vp->v_rdev, uio, ap->a_ioflag);

   if (throttle_info) {
    throttle_info_end_io_internal(throttle_info, thread_throttle_level);
   }

  return (error);
  }

 case 129:
  if (uio_resid(uio) == 0)
   return (0);
  if (uio->uio_offset < 0)
   return (EINVAL);

  io_sync = (ap->a_ioflag & IO_SYNC);

  dev = (vp->v_rdev);

  devBlockSize = vp->v_specsize;
  if (devBlockSize > PAGE_SIZE)
   return(EINVAL);

         bscale = PAGE_SIZE / devBlockSize;
  blkmask = bscale - 1;
  bsize = bscale * devBlockSize;


  do {
   bn = (daddr64_t)((uio->uio_offset / devBlockSize) &~ blkmask);
   on = uio->uio_offset % bsize;

   n = min((unsigned)(bsize - on), uio_resid(uio));
   if (n == bsize &&
       vp->v_specdevsize != (u_int64_t)0 &&
       (uio->uio_offset + (u_int64_t)n) > vp->v_specdevsize) {

       n = (uio->uio_offset + (u_int64_t)n) - vp->v_specdevsize;
   }

   if (n == bsize)
           bp = buf_getblk(vp, bn, bsize, 0, 0, BLK_WRITE);
   else
           error = (int)buf_bread(vp, bn, bsize, NOCRED, &bp);


   if (!error)
    error = (int)buf_error(bp);
   if (error) {
    buf_brelse(bp);
    return (error);
   }
   n = min(n, bsize - buf_resid(bp));

   error = uiomove((char *)buf_dataptr(bp) + on, n, uio);
   if (error) {
    buf_brelse(bp);
    return (error);
   }
   buf_markaged(bp);

   if (io_sync)
           error = buf_bwrite(bp);
   else {
           if ((n + on) == bsize)
            error = buf_bawrite(bp);
    else
            error = buf_bdwrite(bp);
   }
  } while (error == 0 && uio_resid(uio) > 0 && n != 0);
  return (error);

 default:
  panic("spec_write type");
 }


 return (0);
}
