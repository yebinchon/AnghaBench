
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {TYPE_1__* priv_data; } ;
struct TYPE_10__ {int size; scalar_t__ dts; int duration; int * data; } ;
struct TYPE_9__ {int frame_size; scalar_t__ timestamp; int reorder_buf_size; int h; int * reorder_buf; int (* reorder_func ) (int *,int *,int) ;} ;
typedef TYPE_1__ AlsaData ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int) ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_NOPTS_VALUE ;
 int EAGAIN ;
 int EIO ;
 int ENOMEM ;
 int av_log (TYPE_3__*,int ,char*,int ) ;
 scalar_t__ ff_alsa_extend_reorder_buf (TYPE_1__*,int) ;
 scalar_t__ ff_alsa_xrun_recover (TYPE_3__*,int) ;
 int snd_pcm_writei (int ,int *,int) ;
 int snd_strerror (int) ;
 int stub1 (int *,int *,int) ;

__attribute__((used)) static int audio_write_packet(AVFormatContext *s1, AVPacket *pkt)
{
    AlsaData *s = s1->priv_data;
    int res;
    int size = pkt->size;
    uint8_t *buf = pkt->data;

    size /= s->frame_size;
    if (pkt->dts != AV_NOPTS_VALUE)
        s->timestamp = pkt->dts;
    s->timestamp += pkt->duration ? pkt->duration : size;

    if (s->reorder_func) {
        if (size > s->reorder_buf_size)
            if (ff_alsa_extend_reorder_buf(s, size))
                return AVERROR(ENOMEM);
        s->reorder_func(buf, s->reorder_buf, size);
        buf = s->reorder_buf;
    }
    while ((res = snd_pcm_writei(s->h, buf, size)) < 0) {
        if (res == -EAGAIN) {

            return AVERROR(EAGAIN);
        }

        if (ff_alsa_xrun_recover(s1, res) < 0) {
            av_log(s1, AV_LOG_ERROR, "ALSA write error: %s\n",
                   snd_strerror(res));

            return AVERROR(EIO);
        }
    }

    return 0;
}
