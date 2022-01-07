
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pa_stream ;
struct TYPE_2__ {int mainloop; int * stream; } ;
typedef TYPE_1__ PulseData ;





 int pa_stream_get_state (int *) ;
 int pa_threaded_mainloop_signal (int ,int ) ;

__attribute__((used)) static void pulse_stream_state(pa_stream *stream, void *userdata)
{
    PulseData *s = userdata;

    if (stream != s->stream)
        return;

    switch (pa_stream_get_state(s->stream)) {
        case 129:
        case 130:
        case 128:
            pa_threaded_mainloop_signal(s->mainloop, 0);
        default:
            break;
    }
}
