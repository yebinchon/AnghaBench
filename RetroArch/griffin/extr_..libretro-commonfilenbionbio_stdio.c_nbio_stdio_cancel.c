
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbio_stdio_t {int op; int len; int progress; } ;



__attribute__((used)) static void nbio_stdio_cancel(void *data)
{
   struct nbio_stdio_t *handle = (struct nbio_stdio_t*)data;
   if (!handle)
      return;

   handle->op = -1;
   handle->progress = handle->len;
}
