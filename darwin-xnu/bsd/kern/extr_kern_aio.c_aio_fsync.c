
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aio_fsync_args {int op; scalar_t__ aiocbp; } ;
typedef scalar_t__ proc_t ;


 int AIO_DSYNC ;
 int AIO_FSYNC ;
 int AIO_fsync ;
 int BSDDBG_CODE (int ,int ) ;
 int DBG_BSD_AIO ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int EINVAL ;
 int KERNEL_DEBUG (int,int,int,int,int ,int ) ;
 scalar_t__ O_DSYNC ;
 scalar_t__ O_SYNC ;
 int aio_queue_async_request (scalar_t__,scalar_t__,int) ;

int
aio_fsync(proc_t p, struct aio_fsync_args *uap, int *retval )
{
 int error;
 int fsync_kind;

 KERNEL_DEBUG( (BSDDBG_CODE(DBG_BSD_AIO, AIO_fsync)) | DBG_FUNC_START,
          (int)p, (int)uap->aiocbp, uap->op, 0, 0 );

 *retval = 0;

 if (uap->op == O_SYNC || uap->op == 0)
  fsync_kind = AIO_FSYNC;
 else if ( uap->op == O_DSYNC )
  fsync_kind = AIO_DSYNC;
 else {
  *retval = -1;
  error = EINVAL;
  goto ExitRoutine;
 }

 error = aio_queue_async_request( p, uap->aiocbp, fsync_kind );
 if ( error != 0 )
  *retval = -1;

ExitRoutine:
 KERNEL_DEBUG( (BSDDBG_CODE(DBG_BSD_AIO, AIO_fsync)) | DBG_FUNC_END,
          (int)p, (int)uap->aiocbp, error, 0, 0 );

 return( error );

}
