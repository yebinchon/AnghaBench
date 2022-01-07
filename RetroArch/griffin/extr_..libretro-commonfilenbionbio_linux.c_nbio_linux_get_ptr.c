
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbio_linux_t {size_t len; void* ptr; int busy; } ;



__attribute__((used)) static void *nbio_linux_get_ptr(void *data, size_t* len)
{
   struct nbio_linux_t* handle = (struct nbio_linux_t*)data;
   if (!handle)
      return ((void*)0);
   if (len)
      *len = handle->len;
   if (!handle->busy)
      return handle->ptr;
   return ((void*)0);
}
