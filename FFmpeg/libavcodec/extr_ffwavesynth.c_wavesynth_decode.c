
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct wavesynth_context {scalar_t__ cur_ts; scalar_t__ next_ts; } ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_10__ {int channels; struct wavesynth_context* priv_data; } ;
struct TYPE_9__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_8__ {int size; scalar_t__ data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_RL32 (scalar_t__) ;
 scalar_t__ AV_RL64 (scalar_t__) ;
 int EINVAL ;
 int WS_MAX_CHANNELS ;
 int ff_get_buffer (TYPE_3__*,TYPE_2__*,int ) ;
 int memset (int*,int ,int) ;
 int wavesynth_enter_intervals (struct wavesynth_context*,scalar_t__) ;
 int wavesynth_seek (struct wavesynth_context*,scalar_t__) ;
 int wavesynth_synth_sample (struct wavesynth_context*,scalar_t__,int*) ;

__attribute__((used)) static int wavesynth_decode(AVCodecContext *avc, void *rframe, int *rgot_frame,
                            AVPacket *packet)
{
    struct wavesynth_context *ws = avc->priv_data;
    AVFrame *frame = rframe;
    int64_t ts;
    int duration;
    int s, c, r;
    int16_t *pcm;
    int32_t channels[WS_MAX_CHANNELS];

    *rgot_frame = 0;
    if (packet->size != 12)
        return AVERROR_INVALIDDATA;
    ts = AV_RL64(packet->data);
    if (ts != ws->cur_ts)
        wavesynth_seek(ws, ts);
    duration = AV_RL32(packet->data + 8);
    if (duration <= 0)
        return AVERROR(EINVAL);
    frame->nb_samples = duration;
    r = ff_get_buffer(avc, frame, 0);
    if (r < 0)
        return r;
    pcm = (int16_t *)frame->data[0];
    for (s = 0; s < duration; s++, ts++) {
        memset(channels, 0, avc->channels * sizeof(*channels));
        if (ts >= ws->next_ts)
            wavesynth_enter_intervals(ws, ts);
        wavesynth_synth_sample(ws, ts, channels);
        for (c = 0; c < avc->channels; c++)
            *(pcm++) = channels[c] >> 16;
    }
    ws->cur_ts += duration;
    *rgot_frame = 1;
    return packet->size;
}
