
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aio_context_t ;


 int __NR_io_setup ;
 int syscall (int ,unsigned int,int *) ;

__attribute__((used)) static int io_setup(unsigned nr, aio_context_t * ctxp)
{
   return syscall(__NR_io_setup, nr, ctxp);
}
