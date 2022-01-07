
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbio_stdio_t {int op; size_t len; size_t progress; void* data; } ;


 int abort () ;
 void* realloc (void*,size_t) ;

__attribute__((used)) static void nbio_stdio_resize(void *data, size_t len)
{
   void *new_data = ((void*)0);
   struct nbio_stdio_t *handle = (struct nbio_stdio_t*)data;
   if (!handle)
      return;

   if (handle->op >= 0)
      abort();
   if (len < handle->len)
      abort();

   handle->len = len;
   handle->progress = len;
   handle->op = -1;

   new_data = realloc(handle->data, handle->len);

   if (new_data)
      handle->data = new_data;
}
