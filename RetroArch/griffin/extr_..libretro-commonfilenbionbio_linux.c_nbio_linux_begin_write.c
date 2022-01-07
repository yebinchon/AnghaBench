
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbio_linux_t {int dummy; } ;


 int IOCB_CMD_PWRITE ;
 int nbio_begin_op (struct nbio_linux_t*,int ) ;

__attribute__((used)) static void nbio_linux_begin_write(void *data)
{
   struct nbio_linux_t* handle = (struct nbio_linux_t*)data;
   if (handle)
      nbio_begin_op(handle, IOCB_CMD_PWRITE);
}
