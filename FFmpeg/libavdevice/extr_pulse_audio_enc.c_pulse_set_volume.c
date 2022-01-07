
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pa_volume_t ;
struct TYPE_7__ {int channels; } ;
typedef TYPE_1__ pa_sample_spec ;
typedef int pa_operation ;
typedef int pa_cvolume ;
struct TYPE_8__ {int stream; int ctx; int mainloop; int base_volume; } ;
typedef TYPE_2__ PulseData ;


 double PA_VOLUME_NORM ;
 int lrint (double) ;
 int * pa_context_set_sink_input_volume (int ,int ,int *,int ,TYPE_2__*) ;
 int pa_cvolume_set (int *,int ,double) ;
 int pa_stream_get_index (int ) ;
 TYPE_1__* pa_stream_get_sample_spec (int ) ;
 int pa_sw_cvolume_multiply_scalar (int *,int *,int ) ;
 int pa_sw_volume_multiply (int ,int ) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pulse_context_result ;
 int pulse_finish_context_operation (TYPE_2__*,int *,char*) ;

__attribute__((used)) static int pulse_set_volume(PulseData *s, double volume)
{
    pa_operation *op;
    pa_cvolume cvol;
    pa_volume_t vol;
    const pa_sample_spec *ss = pa_stream_get_sample_spec(s->stream);

    vol = pa_sw_volume_multiply(lrint(volume * PA_VOLUME_NORM), s->base_volume);
    pa_cvolume_set(&cvol, ss->channels, PA_VOLUME_NORM);
    pa_sw_cvolume_multiply_scalar(&cvol, &cvol, vol);
    pa_threaded_mainloop_lock(s->mainloop);
    op = pa_context_set_sink_input_volume(s->ctx, pa_stream_get_index(s->stream),
                                          &cvol, pulse_context_result, s);
    return pulse_finish_context_operation(s, op, "pa_context_set_sink_input_volume");
}
