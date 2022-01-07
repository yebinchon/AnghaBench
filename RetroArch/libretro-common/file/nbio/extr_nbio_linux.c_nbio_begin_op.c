
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint16_t ;
struct iocb {int aio_nbytes; scalar_t__ aio_offset; scalar_t__ aio_buf; int aio_lio_opcode; int aio_fildes; } ;
struct nbio_linux_t {int busy; int ctx; int len; struct iocb cb; scalar_t__ ptr; int fd; } ;


 int abort () ;
 int io_submit (int ,int,struct iocb**) ;
 int memset (struct iocb*,int ,int) ;

__attribute__((used)) static void nbio_begin_op(struct nbio_linux_t* handle, uint16_t op)
{
   struct iocb * cbp = &handle->cb;

   memset(&handle->cb, 0, sizeof(handle->cb));

   handle->cb.aio_fildes = handle->fd;
   handle->cb.aio_lio_opcode = op;

   handle->cb.aio_buf = (uint64_t)(uintptr_t)handle->ptr;
   handle->cb.aio_offset = 0;
   handle->cb.aio_nbytes = handle->len;

   if (io_submit(handle->ctx, 1, &cbp) != 1)
      abort();

   handle->busy = 1;
}
