
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct fileproc {int f_flags; TYPE_5__* f_fglob; } ;
struct TYPE_6__ {int sigev_notify; int sigev_signo; } ;
struct TYPE_7__ {scalar_t__ aio_lio_opcode; scalar_t__ aio_nbytes; scalar_t__ aio_buf; scalar_t__ aio_offset; int aio_fildes; TYPE_1__ aio_sigevent; } ;
struct TYPE_8__ {int flags; int procp; TYPE_2__ aiocb; } ;
typedef TYPE_3__ aio_workq_entry ;
struct TYPE_9__ {int fg_flag; } ;


 int AIO_DSYNC ;
 int AIO_FSYNC ;
 int AIO_LIO ;
 int AIO_READ ;
 int AIO_WRITE ;
 scalar_t__ DTYPE_VNODE ;
 int EBADF ;
 int EINVAL ;
 int ESPIPE ;
 scalar_t__ FILEGLOB_DTYPE (TYPE_5__*) ;
 int FP_AIOISSUED ;
 int FREAD ;
 int FWRITE ;
 scalar_t__ INT_MAX ;
 scalar_t__ LIO_NOP ;
 scalar_t__ LIO_READ ;
 scalar_t__ LIO_WRITE ;
 int NSIG ;



 int SIGKILL ;
 int SIGSTOP ;
 scalar_t__ USER_ADDR_NULL ;
 int fp_drop (int ,int ,struct fileproc*,int) ;
 int fp_lookup (int ,int ,struct fileproc**,int) ;
 int proc_fdlock (int ) ;
 int proc_fdunlock (int ) ;

__attribute__((used)) static int
aio_validate( aio_workq_entry *entryp )
{
 struct fileproc *fp;
 int flag;
 int result;

 result = 0;

 if ( (entryp->flags & AIO_LIO) != 0 ) {
  if ( entryp->aiocb.aio_lio_opcode == LIO_READ )
   entryp->flags |= AIO_READ;
  else if ( entryp->aiocb.aio_lio_opcode == LIO_WRITE )
   entryp->flags |= AIO_WRITE;
  else if ( entryp->aiocb.aio_lio_opcode == LIO_NOP )
   return( 0 );
  else
   return( EINVAL );
 }

 flag = FREAD;
 if ( (entryp->flags & (AIO_WRITE | AIO_FSYNC | AIO_DSYNC)) != 0 ) {
  flag = FWRITE;
 }

 if ( (entryp->flags & (AIO_READ | AIO_WRITE)) != 0 ) {
  if ( entryp->aiocb.aio_nbytes > INT_MAX ||
    entryp->aiocb.aio_buf == USER_ADDR_NULL ||
    entryp->aiocb.aio_offset < 0 )
   return( EINVAL );
 }
 switch ( entryp->aiocb.aio_sigevent.sigev_notify ) {
 case 129:
     {
  int signum;


  signum = entryp->aiocb.aio_sigevent.sigev_signo;
  if ( signum <= 0 || signum >= NSIG ||
    signum == SIGKILL || signum == SIGSTOP )
   return (EINVAL);
     }
     break;

 case 130:
  break;

 case 128:


 default:
  return (EINVAL);
 }




 proc_fdlock(entryp->procp);

 result = fp_lookup( entryp->procp, entryp->aiocb.aio_fildes, &fp , 1);
 if ( result == 0 ) {
  if ( (fp->f_fglob->fg_flag & flag) == 0 ) {

   result = EBADF;
  }
  else if ( FILEGLOB_DTYPE(fp->f_fglob) != DTYPE_VNODE ) {

   result = ESPIPE;
  } else
          fp->f_flags |= FP_AIOISSUED;

  fp_drop(entryp->procp, entryp->aiocb.aio_fildes, fp , 1);
 }
 else {
  result = EBADF;
 }

 proc_fdunlock(entryp->procp);

 return( result );

}
