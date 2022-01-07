
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int base_volume; } ;
typedef TYPE_1__ pa_sink_info ;
typedef int pa_context ;
struct TYPE_6__ {int base_volume; int mainloop; int * ctx; } ;
typedef TYPE_2__ PulseData ;


 int AV_LOG_DEBUG ;
 int PA_SINK_FLAT_VOLUME ;
 int PA_VOLUME_NORM ;
 int av_log (TYPE_2__*,int ,char*,int ) ;
 int pa_threaded_mainloop_signal (int ,int ) ;

__attribute__((used)) static void pulse_audio_sink_device_cb(pa_context *ctx, const pa_sink_info *dev,
                                       int eol, void *userdata)
{
    PulseData *s = userdata;

    if (s->ctx != ctx)
        return;

    if (eol) {
        pa_threaded_mainloop_signal(s->mainloop, 0);
    } else {
        if (dev->flags & PA_SINK_FLAT_VOLUME)
            s->base_volume = dev->base_volume;
        else
            s->base_volume = PA_VOLUME_NORM;
        av_log(s, AV_LOG_DEBUG, "base volume: %u\n", s->base_volume);
    }
}
