
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pa_stream ;
struct TYPE_2__ {int mainloop; } ;
typedef TYPE_1__ PulseData ;


 int pa_threaded_mainloop_signal (int ,int ) ;

__attribute__((used)) static void stream_latency_update_cb(pa_stream *s, void *userdata) {
    PulseData *p = userdata;

    pa_threaded_mainloop_signal(p->mainloop, 0);
}
