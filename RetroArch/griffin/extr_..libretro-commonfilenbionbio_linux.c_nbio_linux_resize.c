
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbio_linux_t {size_t len; int ptr; int fd; } ;


 int abort () ;
 scalar_t__ ftruncate (int ,size_t) ;
 int realloc (int ,size_t) ;

__attribute__((used)) static void nbio_linux_resize(void *data, size_t len)
{
   struct nbio_linux_t* handle = (struct nbio_linux_t*)data;
   if (!handle)
      return;




   if (len < handle->len)
      abort();

   if (ftruncate(handle->fd, len) != 0)
      abort();


   handle->ptr = realloc(handle->ptr, len);
   handle->len = len;
}
