
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pa_context_state_t ;
struct TYPE_3__ {int mainloop; int ctx; } ;
typedef TYPE_1__ PulseData ;


 int AVERROR_EXTERNAL ;
 scalar_t__ PA_CONTEXT_FAILED ;
 scalar_t__ PA_CONTEXT_READY ;
 scalar_t__ PA_CONTEXT_TERMINATED ;
 scalar_t__ pa_context_get_state (int ) ;
 int pa_threaded_mainloop_wait (int ) ;

__attribute__((used)) static int pulse_context_wait(PulseData *s)
{
    pa_context_state_t state;

    while ((state = pa_context_get_state(s->ctx)) != PA_CONTEXT_READY) {
        if (state == PA_CONTEXT_FAILED || state == PA_CONTEXT_TERMINATED)
            return AVERROR_EXTERNAL;
        pa_threaded_mainloop_wait(s->mainloop);
    }
    return 0;
}
