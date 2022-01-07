
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbio_linux_t {int busy; int cb; int ctx; } ;
struct io_event {int dummy; } ;


 int io_cancel (int ,int *,struct io_event*) ;

__attribute__((used)) static void nbio_linux_cancel(void *data)
{
   struct nbio_linux_t* handle = (struct nbio_linux_t*)data;
   if (!handle)
      return;

   if (handle->busy)
   {
      struct io_event ev;
      io_cancel(handle->ctx, &handle->cb, &ev);
      handle->busy = 0;
   }
}
