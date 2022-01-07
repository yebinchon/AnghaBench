
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aio_context_t ;


 int __NR_io_destroy ;
 int syscall (int ,int ) ;

__attribute__((used)) static int io_destroy(aio_context_t ctx)
{
   return syscall(__NR_io_destroy, ctx);
}
