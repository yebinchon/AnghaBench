
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vnop_read_args {int a_ioflag; struct uio* a_uio; struct vnode* a_vp; } ;
struct TYPE_5__ {TYPE_1__* vu_specinfo; } ;
struct vnode {int v_type; int v_specsize; int v_speclastr; int v_rdev; TYPE_2__ v_un; } ;
struct uio {scalar_t__ uio_rw; long uio_offset; int uio_segflg; } ;
struct buf {int dummy; } ;
struct _throttle_io_info_t {int dummy; } ;
typedef int dev_t ;
typedef int daddr64_t ;
struct TYPE_6__ {int (* d_read ) (int ,struct uio*,int ) ;int d_type; } ;
struct TYPE_4__ {size_t si_devbsdunit; int si_isssd; int si_throttleable; } ;


 int D_DISK ;
 int EINVAL ;
 int NOCRED ;
 int PAGE_SIZE ;
 int TRUE ;
 scalar_t__ UIO_READ ;
 scalar_t__ UIO_SEG_IS_USER_SPACE (int ) ;


 struct _throttle_io_info_t* _throttle_io_info ;
 int buf_bread (struct vnode*,int ,int,int ,struct buf**) ;
 int buf_breadn (struct vnode*,int ,int,int *,int*,int,int ,struct buf**) ;
 int buf_brelse (struct buf*) ;
 scalar_t__ buf_dataptr (struct buf*) ;
 int buf_markaged (struct buf*) ;
 int buf_resid (struct buf*) ;
 TYPE_3__* cdevsw ;
 size_t major (int ) ;
 int min (unsigned int,scalar_t__) ;
 int panic (char*) ;
 int stub1 (int ,struct uio*,int ) ;
 int throttle_info_end_io_internal (struct _throttle_io_info_t*,int) ;
 int throttle_info_update_internal (struct _throttle_io_info_t*,int *,int ,int ,int ,int *) ;
 scalar_t__ uio_resid (struct uio*) ;
 int uiomove (char*,int,struct uio*) ;
 int vnode_lock (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;

int
spec_read(struct vnop_read_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct uio *uio = ap->a_uio;
 struct buf *bp;
 daddr64_t bn, nextbn;
 long bsize, bscale;
 int devBlockSize=0;
 int n, on;
 int error = 0;
 dev_t dev;







 if (uio_resid(uio) == 0)
  return (0);

 switch (vp->v_type) {

 case 128:
  {
   struct _throttle_io_info_t *throttle_info = ((void*)0);
   int thread_throttle_level;
                if (cdevsw[major(vp->v_rdev)].d_type == D_DISK && vp->v_un.vu_specinfo->si_throttleable) {
   throttle_info = &_throttle_io_info[vp->v_un.vu_specinfo->si_devbsdunit];
    thread_throttle_level = throttle_info_update_internal(throttle_info, ((void*)0), 0, vp->v_un.vu_specinfo->si_isssd, TRUE, ((void*)0));
                }
  error = (*cdevsw[major(vp->v_rdev)].d_read)
   (vp->v_rdev, uio, ap->a_ioflag);

   if (throttle_info) {
    throttle_info_end_io_internal(throttle_info, thread_throttle_level);
   }

  return (error);
  }

 case 129:
  if (uio->uio_offset < 0)
   return (EINVAL);

  dev = vp->v_rdev;

  devBlockSize = vp->v_specsize;

  if (devBlockSize > PAGE_SIZE)
   return (EINVAL);

         bscale = PAGE_SIZE / devBlockSize;
  bsize = bscale * devBlockSize;

  do {
   on = uio->uio_offset % bsize;

   bn = (daddr64_t)((uio->uio_offset / devBlockSize) &~ (bscale - 1));

   if (vp->v_speclastr + bscale == bn) {
           nextbn = bn + bscale;
    error = buf_breadn(vp, bn, (int)bsize, &nextbn,
            (int *)&bsize, 1, NOCRED, &bp);
   } else
           error = buf_bread(vp, bn, (int)bsize, NOCRED, &bp);

   vnode_lock(vp);
   vp->v_speclastr = bn;
   vnode_unlock(vp);

   n = bsize - buf_resid(bp);
   if ((on > n) || error) {
           if (!error)
            error = EINVAL;
    buf_brelse(bp);
    return (error);
   }
   n = min((unsigned)(n - on), uio_resid(uio));

   error = uiomove((char *)buf_dataptr(bp) + on, n, uio);
   if (n + on == bsize)
    buf_markaged(bp);
   buf_brelse(bp);
  } while (error == 0 && uio_resid(uio) > 0 && n != 0);
  return (error);

 default:
  panic("spec_read type");
 }


 return (0);
}
