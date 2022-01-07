
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uio_t ;
typedef int uio_buf ;
struct vnode {int dummy; } ;
struct vfs_context {int vc_ucred; int vc_thread; } ;
struct dqblk {scalar_t__* dqb_spare; void* dqb_id; void* dqb_itime; void* dqb_btime; void* dqb_curinodes; void* dqb_isoftlimit; void* dqb_ihardlimit; void* dqb_curbytes; void* dqb_bsoftlimit; void* dqb_bhardlimit; } ;
struct dquot {scalar_t__ dq_id; int dq_flags; struct dqblk dq_dqb; TYPE_1__* dq_qfile; int dq_index; } ;
struct TYPE_2__ {int qf_cred; struct vnode* qf_vp; } ;


 int CAST_USER_ADDR_T (struct dqblk*) ;
 int DQ_MOD ;
 int EIO ;
 struct vnode* NULLVP ;
 void* OSSwapHostToBigInt32 (void*) ;
 void* OSSwapHostToBigInt64 (void*) ;
 int UIO_SIZEOF (int) ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int VNOP_WRITE (struct vnode*,int ,int ,struct vfs_context*) ;
 int current_thread () ;
 int dqoffset (int ) ;
 int panic (char*) ;
 int uio_addiov (int ,int ,int) ;
 int uio_createwithbuffer (int,int ,int ,int ,char*,int) ;
 scalar_t__ uio_resid (int ) ;

int
dqsync_locked(struct dquot *dq)
{
 struct vfs_context context;
 struct vnode *dqvp;
 struct dqblk dqb, *dqblkp;
 uio_t auio;
 int error;
 char uio_buf[ UIO_SIZEOF(1) ];

 if (dq->dq_id == 0) {
         dq->dq_flags &= ~DQ_MOD;
  return (0);
 }
 if (dq->dq_qfile == ((void*)0))
  panic("dqsync: NULL dq_qfile");
 if ((dqvp = dq->dq_qfile->qf_vp) == NULLVP)
  panic("dqsync: NULL qf_vp");

 auio = uio_createwithbuffer(1, dqoffset(dq->dq_index), UIO_SYSSPACE,
          UIO_WRITE, &uio_buf[0], sizeof(uio_buf));
 uio_addiov(auio, CAST_USER_ADDR_T(&dqb), sizeof (struct dqblk));

 context.vc_thread = current_thread();
 context.vc_ucred = dq->dq_qfile->qf_cred;

 dqblkp = &dq->dq_dqb;
 dqb.dqb_bhardlimit = OSSwapHostToBigInt64(dqblkp->dqb_bhardlimit);
 dqb.dqb_bsoftlimit = OSSwapHostToBigInt64(dqblkp->dqb_bsoftlimit);
 dqb.dqb_curbytes = OSSwapHostToBigInt64(dqblkp->dqb_curbytes);
 dqb.dqb_ihardlimit = OSSwapHostToBigInt32(dqblkp->dqb_ihardlimit);
 dqb.dqb_isoftlimit = OSSwapHostToBigInt32(dqblkp->dqb_isoftlimit);
 dqb.dqb_curinodes = OSSwapHostToBigInt32(dqblkp->dqb_curinodes);
 dqb.dqb_btime = OSSwapHostToBigInt32(dqblkp->dqb_btime);
 dqb.dqb_itime = OSSwapHostToBigInt32(dqblkp->dqb_itime);
 dqb.dqb_id = OSSwapHostToBigInt32(dqblkp->dqb_id);
 dqb.dqb_spare[0] = 0;
 dqb.dqb_spare[1] = 0;
 dqb.dqb_spare[2] = 0;
 dqb.dqb_spare[3] = 0;

 error = VNOP_WRITE(dqvp, auio, 0, &context);
 if (uio_resid(auio) && error == 0)
  error = EIO;
 dq->dq_flags &= ~DQ_MOD;

 return (error);
}
