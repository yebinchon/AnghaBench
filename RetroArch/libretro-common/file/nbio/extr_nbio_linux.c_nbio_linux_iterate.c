
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbio_linux_t {int busy; int ctx; } ;
struct io_event {int dummy; } ;


 int io_getevents (int ,int ,int,struct io_event*,int *) ;

__attribute__((used)) static bool nbio_linux_iterate(void *data)
{
   struct nbio_linux_t* handle = (struct nbio_linux_t*)data;
   if (!handle)
      return 0;
   if (handle->busy)
   {
      struct io_event ev;
      if (io_getevents(handle->ctx, 0, 1, &ev, ((void*)0)) == 1)
         handle->busy = 0;
   }
   return !handle->busy;
}
