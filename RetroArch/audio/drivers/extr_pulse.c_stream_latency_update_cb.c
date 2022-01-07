
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mainloop; } ;
typedef TYPE_1__ pa_t ;
typedef int pa_stream ;


 int pa_threaded_mainloop_signal (int ,int ) ;

__attribute__((used)) static void stream_latency_update_cb(pa_stream *s, void *data)
{
   pa_t *pa = (pa_t*)data;

   (void)s;

   pa_threaded_mainloop_signal(pa->mainloop, 0);
}
