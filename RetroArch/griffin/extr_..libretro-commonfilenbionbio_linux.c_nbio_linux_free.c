
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbio_linux_t {struct nbio_linux_t* ptr; int fd; int ctx; } ;


 int close (int ) ;
 int free (struct nbio_linux_t*) ;
 int io_destroy (int ) ;

__attribute__((used)) static void nbio_linux_free(void *data)
{
   struct nbio_linux_t* handle = (struct nbio_linux_t*)data;
   if (!handle)
      return;

   io_destroy(handle->ctx);
   close(handle->fd);
   free(handle->ptr);
   free(handle);
}
