
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ssize_t ;
struct TYPE_3__ {int mainloop; int nonblock; int stream; scalar_t__ is_paused; } ;
typedef TYPE_1__ pa_t ;


 size_t MIN (size_t,int ) ;
 int PA_SEEK_RELATIVE ;
 int pa_stream_writable_size (int ) ;
 int pa_stream_write (int ,int const*,size_t,int *,int ,int ) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 int pa_threaded_mainloop_wait (int ) ;
 int pulse_start (TYPE_1__*,int) ;

__attribute__((used)) static ssize_t pulse_write(void *data, const void *buf_, size_t size)
{
   pa_t *pa = (pa_t*)data;
   const uint8_t *buf = (const uint8_t*)buf_;
   size_t written = 0;



   if (pa->is_paused)
      if (!pulse_start(pa, 0))
         return -1;

   pa_threaded_mainloop_lock(pa->mainloop);
   while (size)
   {
      size_t writable = MIN(size, pa_stream_writable_size(pa->stream));

      if (writable)
      {
         pa_stream_write(pa->stream, buf, writable, ((void*)0), 0, PA_SEEK_RELATIVE);
         buf += writable;
         size -= writable;
         written += writable;
      }
      else if (!pa->nonblock)
         pa_threaded_mainloop_wait(pa->mainloop);
      else
         break;
   }

   pa_threaded_mainloop_unlock(pa->mainloop);

   return written;
}
