
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pa_operation ;
struct TYPE_5__ {int mute; int stream; int ctx; int mainloop; } ;
typedef TYPE_1__ PulseData ;


 int * pa_context_set_sink_input_mute (int ,int ,int ,int ,TYPE_1__*) ;
 int pa_stream_get_index (int ) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pulse_context_result ;
 int pulse_finish_context_operation (TYPE_1__*,int *,char*) ;

__attribute__((used)) static int pulse_set_mute(PulseData *s)
{
    pa_operation *op;
    pa_threaded_mainloop_lock(s->mainloop);
    op = pa_context_set_sink_input_mute(s->ctx, pa_stream_get_index(s->stream),
                                        s->mute, pulse_context_result, s);
    return pulse_finish_context_operation(s, op, "pa_context_set_sink_input_mute");
}
