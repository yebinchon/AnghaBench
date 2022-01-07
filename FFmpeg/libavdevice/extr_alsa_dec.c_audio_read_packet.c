
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ snd_pcm_sframes_t ;
typedef int int64_t ;
struct TYPE_12__ {TYPE_1__* priv_data; } ;
struct TYPE_11__ {int size; int pts; int data; } ;
struct TYPE_10__ {int period_size; int frame_size; int last_period; int timefilter; int sample_rate; int h; } ;
typedef TYPE_1__ AlsaData ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int) ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 int EIO ;
 int av_gettime () ;
 int av_log (TYPE_3__*,int ,char*,int ) ;
 scalar_t__ av_new_packet (TYPE_2__*,int) ;
 int av_packet_unref (TYPE_2__*) ;
 scalar_t__ av_rescale (scalar_t__,int,int ) ;
 scalar_t__ ff_alsa_xrun_recover (TYPE_3__*,int) ;
 int ff_timefilter_reset (int ) ;
 int ff_timefilter_update (int ,int ,int) ;
 int snd_pcm_delay (int ,scalar_t__*) ;
 int snd_pcm_readi (int ,int ,int) ;
 int snd_strerror (int) ;

__attribute__((used)) static int audio_read_packet(AVFormatContext *s1, AVPacket *pkt)
{
    AlsaData *s = s1->priv_data;
    int res;
    int64_t dts;
    snd_pcm_sframes_t delay = 0;

    if (av_new_packet(pkt, s->period_size * s->frame_size) < 0) {
        return AVERROR(EIO);
    }

    while ((res = snd_pcm_readi(s->h, pkt->data, s->period_size)) < 0) {
        if (res == -EAGAIN) {
            av_packet_unref(pkt);

            return AVERROR(EAGAIN);
        }
        if (ff_alsa_xrun_recover(s1, res) < 0) {
            av_log(s1, AV_LOG_ERROR, "ALSA read error: %s\n",
                   snd_strerror(res));
            av_packet_unref(pkt);

            return AVERROR(EIO);
        }
        ff_timefilter_reset(s->timefilter);
    }

    dts = av_gettime();
    snd_pcm_delay(s->h, &delay);
    dts -= av_rescale(delay + res, 1000000, s->sample_rate);
    pkt->pts = ff_timefilter_update(s->timefilter, dts, s->last_period);
    s->last_period = res;

    pkt->size = res * s->frame_size;

    return 0;
}
