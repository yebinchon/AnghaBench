
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pa_stream ;
struct TYPE_2__ {int mainloop; int last_result; int * stream; } ;
typedef TYPE_1__ PulseData ;


 int AVERROR_EXTERNAL ;
 int pa_threaded_mainloop_signal (int ,int ) ;

__attribute__((used)) static void pulse_stream_result(pa_stream *stream, int success, void *userdata)
{
    PulseData *s = userdata;

    if (stream != s->stream)
        return;

    s->last_result = success ? 0 : AVERROR_EXTERNAL;
    pa_threaded_mainloop_signal(s->mainloop, 0);
}
