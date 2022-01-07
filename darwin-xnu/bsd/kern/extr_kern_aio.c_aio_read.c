
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aio_read_args {scalar_t__ aiocbp; } ;
typedef scalar_t__ proc_t ;


 int AIO_READ ;
 int AIO_read ;
 int BSDDBG_CODE (int ,int ) ;
 int DBG_BSD_AIO ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int KERNEL_DEBUG (int,int,int,int,int ,int ) ;
 int aio_queue_async_request (scalar_t__,scalar_t__,int ) ;

int
aio_read(proc_t p, struct aio_read_args *uap, int *retval )
{
 int error;

 KERNEL_DEBUG( (BSDDBG_CODE(DBG_BSD_AIO, AIO_read)) | DBG_FUNC_START,
          (int)p, (int)uap->aiocbp, 0, 0, 0 );

 *retval = 0;

 error = aio_queue_async_request( p, uap->aiocbp, AIO_READ );
 if ( error != 0 )
  *retval = -1;

 KERNEL_DEBUG( (BSDDBG_CODE(DBG_BSD_AIO, AIO_read)) | DBG_FUNC_END,
          (int)p, (int)uap->aiocbp, error, 0, 0 );

 return( error );

}
