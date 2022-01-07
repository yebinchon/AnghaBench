
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mainloop; int buffer_size; int stream; } ;
typedef TYPE_1__ pa_t ;


 int audio_driver_set_buffer_size (int ) ;
 size_t pa_stream_writable_size (int ) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;

__attribute__((used)) static size_t pulse_write_avail(void *data)
{
   size_t length;
   pa_t *pa = (pa_t*)data;

   pa_threaded_mainloop_lock(pa->mainloop);
   length = pa_stream_writable_size(pa->stream);

   audio_driver_set_buffer_size(pa->buffer_size);
   pa_threaded_mainloop_unlock(pa->mainloop);
   return length;
}
