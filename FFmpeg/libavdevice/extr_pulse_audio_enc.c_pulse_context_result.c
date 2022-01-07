
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pa_context ;
struct TYPE_2__ {int mainloop; int last_result; int * ctx; } ;
typedef TYPE_1__ PulseData ;


 int AVERROR_EXTERNAL ;
 int pa_threaded_mainloop_signal (int ,int ) ;

__attribute__((used)) static void pulse_context_result(pa_context *ctx, int success, void *userdata)
{
    PulseData *s = userdata;

    if (s->ctx != ctx)
        return;

    s->last_result = success ? 0 : AVERROR_EXTERNAL;
    pa_threaded_mainloop_signal(s->mainloop, 0);
}
