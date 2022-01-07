
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aio_write_args {scalar_t__ aiocbp; } ;
typedef scalar_t__ proc_t ;


 int AIO_WRITE ;
 int AIO_write ;
 int BSDDBG_CODE (int ,int ) ;
 int DBG_BSD_AIO ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int KERNEL_DEBUG (int,int,int,int,int ,int ) ;
 int aio_queue_async_request (scalar_t__,scalar_t__,int ) ;

int
aio_write(proc_t p, struct aio_write_args *uap, int *retval )
{
 int error;

 *retval = 0;

 KERNEL_DEBUG( (BSDDBG_CODE(DBG_BSD_AIO, AIO_write)) | DBG_FUNC_START,
          (int)p, (int)uap->aiocbp, 0, 0, 0 );

 error = aio_queue_async_request( p, uap->aiocbp, AIO_WRITE );
 if ( error != 0 )
  *retval = -1;

 KERNEL_DEBUG( (BSDDBG_CODE(DBG_BSD_AIO, AIO_write)) | DBG_FUNC_END,
          (int)p, (int)uap->aiocbp, error, 0, 0 );

 return( error );

}
