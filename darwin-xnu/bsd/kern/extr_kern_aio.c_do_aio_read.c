
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vfs_context {int vc_ucred; int vc_thread; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
struct TYPE_6__ {int aio_fildes; int aio_offset; int aio_nbytes; int aio_buf; } ;
struct TYPE_7__ {TYPE_2__ aiocb; int procp; int returnval; int thread; } ;
typedef TYPE_3__ aio_workq_entry ;
struct TYPE_5__ {int fg_flag; int fg_cred; } ;


 int EBADF ;
 int FOF_OFFSET ;
 int FREAD ;
 int dofileread (struct vfs_context*,struct fileproc*,int ,int ,int ,int ,int *) ;
 int fp_drop (int ,int ,struct fileproc*,int ) ;
 int fp_lookup (int ,int ,struct fileproc**,int ) ;

__attribute__((used)) static int
do_aio_read( aio_workq_entry *entryp )
{
 struct fileproc *fp;
 int error;
 struct vfs_context context;

 if ( (error = fp_lookup(entryp->procp, entryp->aiocb.aio_fildes, &fp , 0)) )
  return(error);
 if ( (fp->f_fglob->fg_flag & FREAD) == 0 ) {
  fp_drop(entryp->procp, entryp->aiocb.aio_fildes, fp, 0);
  return(EBADF);
 }

 context.vc_thread = entryp->thread;
 context.vc_ucred = fp->f_fglob->fg_cred;

 error = dofileread(&context, fp,
    entryp->aiocb.aio_buf,
    entryp->aiocb.aio_nbytes,
    entryp->aiocb.aio_offset, FOF_OFFSET,
    &entryp->returnval);
 fp_drop(entryp->procp, entryp->aiocb.aio_fildes, fp, 0);

 return( error );

}
