
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct vfs_context {int vc_ucred; int vc_thread; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
struct TYPE_6__ {int aio_fildes; } ;
struct TYPE_7__ {int flags; int returnval; TYPE_2__ aiocb; int procp; } ;
typedef TYPE_3__ aio_workq_entry ;
struct TYPE_5__ {int fg_cred; } ;


 int AIO_FSYNC ;
 int MNT_DWAIT ;
 int MNT_WAIT ;
 int VNOP_FSYNC (struct vnode*,int,struct vfs_context*) ;
 int current_thread () ;
 int fp_drop (int ,int ,struct fileproc*,int ) ;
 int fp_getfvp (int ,int ,struct fileproc**,struct vnode**) ;
 int vnode_getwithref (struct vnode*) ;
 int vnode_put (struct vnode*) ;

__attribute__((used)) static int
do_aio_fsync( aio_workq_entry *entryp )
{
 struct vfs_context context;
 struct vnode *vp;
 struct fileproc *fp;
 int sync_flag;
 int error;
 if (entryp->flags & AIO_FSYNC)
  sync_flag = MNT_WAIT;
 else
  sync_flag = MNT_DWAIT;

 error = fp_getfvp( entryp->procp, entryp->aiocb.aio_fildes, &fp, &vp);
 if ( error == 0 ) {
  if ( (error = vnode_getwithref(vp)) ) {
          fp_drop(entryp->procp, entryp->aiocb.aio_fildes, fp, 0);
   entryp->returnval = -1;
   return(error);
  }
  context.vc_thread = current_thread();
  context.vc_ucred = fp->f_fglob->fg_cred;

  error = VNOP_FSYNC( vp, sync_flag, &context);

  (void)vnode_put(vp);

  fp_drop(entryp->procp, entryp->aiocb.aio_fildes, fp, 0);
 }
 if ( error != 0 )
  entryp->returnval = -1;

 return( error );

}
