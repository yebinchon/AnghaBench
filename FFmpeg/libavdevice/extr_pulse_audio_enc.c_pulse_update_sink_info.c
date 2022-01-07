
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pa_operation ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int mainloop; int device; int ctx; } ;
typedef TYPE_1__ PulseData ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 scalar_t__ PA_OPERATION_RUNNING ;
 int av_log (TYPE_1__*,int ,char*) ;
 int * pa_context_get_sink_info_by_name (int ,int ,int ,TYPE_1__*) ;
 scalar_t__ pa_operation_get_state (int *) ;
 int pa_operation_unref (int *) ;
 int pa_threaded_mainloop_wait (int ) ;
 int pulse_audio_sink_device_cb ;

__attribute__((used)) static int pulse_update_sink_info(AVFormatContext *h)
{
    PulseData *s = h->priv_data;
    pa_operation *op;
    if (!(op = pa_context_get_sink_info_by_name(s->ctx, s->device,
                                                pulse_audio_sink_device_cb, s))) {
        av_log(s, AV_LOG_ERROR, "pa_context_get_sink_info_by_name failed.\n");
        return AVERROR_EXTERNAL;
    }
    while (pa_operation_get_state(op) == PA_OPERATION_RUNNING)
        pa_threaded_mainloop_wait(s->mainloop);
    pa_operation_unref(op);
    return 0;
}
