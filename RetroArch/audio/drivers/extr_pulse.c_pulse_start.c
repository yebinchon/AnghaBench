
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_paused; int success; int mainloop; int stream; } ;
typedef TYPE_1__ pa_t ;


 int RARCH_LOG (char*) ;
 int pa_stream_cork (int ,int,int ,TYPE_1__*) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 int pa_threaded_mainloop_wait (int ) ;
 int stream_success_cb ;

__attribute__((used)) static bool pulse_start(void *data, bool is_shutdown)
{
   bool ret;
   pa_t *pa = (pa_t*)data;
   if (!pa->is_paused)
      return 1;

   RARCH_LOG("[PulseAudio]: Unpausing.\n");

   pa->success = 1;
   pa_threaded_mainloop_lock(pa->mainloop);
   pa_stream_cork(pa->stream, 0, stream_success_cb, pa);
   pa_threaded_mainloop_wait(pa->mainloop);
   ret = pa->success;
   pa_threaded_mainloop_unlock(pa->mainloop);
   pa->is_paused = 0;
   return ret;
}
