
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pa_stream_state_t ;
struct TYPE_3__ {int mainloop; int stream; } ;
typedef TYPE_1__ PulseData ;


 int AVERROR_EXTERNAL ;
 scalar_t__ PA_STREAM_FAILED ;
 scalar_t__ PA_STREAM_READY ;
 scalar_t__ PA_STREAM_TERMINATED ;
 scalar_t__ pa_stream_get_state (int ) ;
 int pa_threaded_mainloop_wait (int ) ;

__attribute__((used)) static int pulse_stream_wait(PulseData *s)
{
    pa_stream_state_t state;

    while ((state = pa_stream_get_state(s->stream)) != PA_STREAM_READY) {
        if (state == PA_STREAM_FAILED || state == PA_STREAM_TERMINATED)
            return AVERROR_EXTERNAL;
        pa_threaded_mainloop_wait(s->mainloop);
    }
    return 0;
}
