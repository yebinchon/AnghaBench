
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iocb {int dummy; } ;
typedef int aio_context_t ;


 int __NR_io_submit ;
 int syscall (int ,int ,long,struct iocb**) ;

__attribute__((used)) static int io_submit(aio_context_t ctx, long nr, struct iocb ** cbp)
{
   return syscall(__NR_io_submit, ctx, nr, cbp);
}
