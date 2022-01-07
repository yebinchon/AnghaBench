
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbio_stdio_t {size_t len; int op; void* data; } ;



__attribute__((used)) static void *nbio_stdio_get_ptr(void *data, size_t* len)
{
   struct nbio_stdio_t *handle = (struct nbio_stdio_t*)data;
   if (!handle)
      return ((void*)0);
   if (len)
      *len = handle->len;
   if (handle->op == -1)
      return handle->data;
   return ((void*)0);
}
