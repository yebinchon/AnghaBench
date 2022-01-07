
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pa_context ;
struct TYPE_2__ {int mainloop; int * ctx; } ;
typedef TYPE_1__ PulseData ;





 int pa_context_get_state (int *) ;
 int pa_threaded_mainloop_signal (int ,int ) ;

__attribute__((used)) static void pulse_context_state(pa_context *ctx, void *userdata)
{
    PulseData *s = userdata;

    if (s->ctx != ctx)
        return;

    switch (pa_context_get_state(ctx)) {
        case 129:
        case 130:
        case 128:
            pa_threaded_mainloop_signal(s->mainloop, 0);
        default:
            break;
    }
}
