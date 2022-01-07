
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv_data; } ;
struct TYPE_8__ {int mute; int mainloop; int last_volume; int stream; } ;
typedef TYPE_1__ PulseData ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int PA_VOLUME_INVALID ;
 int pa_stream_is_corked (int ) ;
 int pa_threaded_mainloop_lock (int ) ;
 int pa_threaded_mainloop_unlock (int ) ;
 int pulse_set_mute (TYPE_1__*) ;
 int pulse_set_pause (TYPE_1__*,int) ;
 int pulse_set_volume (TYPE_1__*,double) ;
 int pulse_update_sink_input_info (TYPE_2__*) ;

__attribute__((used)) static int pulse_control_message(AVFormatContext *h, int type,
                                 void *data, size_t data_size)
{
    PulseData *s = h->priv_data;
    int ret;

    switch(type) {
    case 133:
        return pulse_set_pause(s, 1);
    case 132:
        return pulse_set_pause(s, 0);
    case 129:
        return pulse_set_pause(s, !pa_stream_is_corked(s->stream));
    case 134:
        if (!s->mute) {
            s->mute = 1;
            return pulse_set_mute(s);
        }
        return 0;
    case 128:
        if (s->mute) {
            s->mute = 0;
            return pulse_set_mute(s);
        }
        return 0;
    case 130:
        s->mute = !s->mute;
        return pulse_set_mute(s);
    case 131:
        return pulse_set_volume(s, *(double *)data);
    case 135:
        s->last_volume = PA_VOLUME_INVALID;
        pa_threaded_mainloop_lock(s->mainloop);
        ret = pulse_update_sink_input_info(h);
        pa_threaded_mainloop_unlock(s->mainloop);
        return ret;
    case 136:
        s->mute = -1;
        pa_threaded_mainloop_lock(s->mainloop);
        ret = pulse_update_sink_input_info(h);
        pa_threaded_mainloop_unlock(s->mainloop);
        return ret;
    default:
        break;
    }
    return AVERROR(ENOSYS);
}
