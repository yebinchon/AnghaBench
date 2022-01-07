
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pa_operation ;
struct TYPE_5__ {int stream; int mainloop; } ;
typedef TYPE_1__ PulseData ;


 int * pa_stream_cork (int ,int,int ,TYPE_1__*) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pulse_finish_stream_operation (TYPE_1__*,int *,char*) ;
 int pulse_stream_result ;

__attribute__((used)) static int pulse_set_pause(PulseData *s, int pause)
{
    pa_operation *op;
    pa_threaded_mainloop_lock(s->mainloop);
    op = pa_stream_cork(s->stream, pause, pulse_stream_result, s);
    return pulse_finish_stream_operation(s, op, "pa_stream_cork");
}
