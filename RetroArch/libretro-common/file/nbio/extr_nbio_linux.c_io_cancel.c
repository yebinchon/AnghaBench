
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iocb {int dummy; } ;
struct io_event {int dummy; } ;
typedef int aio_context_t ;


 int __NR_io_cancel ;
 int syscall (int ,int ,struct iocb*,struct io_event*) ;

__attribute__((used)) static int io_cancel(aio_context_t ctx, struct iocb * iocb, struct io_event * result)
{
   return syscall(__NR_io_cancel, ctx, iocb, result);
}
