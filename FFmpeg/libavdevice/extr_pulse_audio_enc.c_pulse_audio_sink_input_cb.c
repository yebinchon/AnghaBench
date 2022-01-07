
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int val ;
typedef scalar_t__ pa_volume_t ;
struct TYPE_6__ {scalar_t__ mute; int volume; } ;
typedef TYPE_1__ pa_sink_input_info ;
typedef int pa_context ;
struct TYPE_8__ {TYPE_2__* priv_data; } ;
struct TYPE_7__ {scalar_t__ mute; scalar_t__ last_volume; int base_volume; int * ctx; } ;
typedef TYPE_2__ PulseData ;
typedef TYPE_3__ AVFormatContext ;


 int AV_DEV_TO_APP_MUTE_STATE_CHANGED ;
 int AV_DEV_TO_APP_VOLUME_LEVEL_CHANGED ;
 double PA_VOLUME_NORM ;
 int avdevice_dev_to_app_control_message (TYPE_3__*,int ,double*,int) ;
 scalar_t__ pa_cvolume_avg (int *) ;
 scalar_t__ pa_sw_volume_divide (scalar_t__,int ) ;

__attribute__((used)) static void pulse_audio_sink_input_cb(pa_context *ctx, const pa_sink_input_info *i,
                                      int eol, void *userdata)
{
    AVFormatContext *h = userdata;
    PulseData *s = h->priv_data;

    if (s->ctx != ctx)
        return;

    if (!eol) {
        double val;
        pa_volume_t vol = pa_cvolume_avg(&i->volume);
        if (s->mute < 0 || (s->mute && !i->mute) || (!s->mute && i->mute)) {
            s->mute = i->mute;
            avdevice_dev_to_app_control_message(h, AV_DEV_TO_APP_MUTE_STATE_CHANGED, &s->mute, sizeof(s->mute));
        }

        vol = pa_sw_volume_divide(vol, s->base_volume);
        if (s->last_volume != vol) {
            val = (double)vol / PA_VOLUME_NORM;
            avdevice_dev_to_app_control_message(h, AV_DEV_TO_APP_VOLUME_LEVEL_CHANGED, &val, sizeof(val));
            s->last_volume = vol;
        }
    }
}
