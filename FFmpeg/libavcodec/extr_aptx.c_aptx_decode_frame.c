
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_14__ {TYPE_1__* priv_data; } ;
struct TYPE_13__ {int channels; int nb_samples; int ** data; int format; } ;
struct TYPE_12__ {int size; int * data; } ;
struct TYPE_11__ {int block_size; } ;
typedef TYPE_1__ AptXContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_SAMPLE_FMT_S32P ;
 int AV_WN32A (int *,int) ;
 int NB_CHANNELS ;
 scalar_t__ aptx_decode_samples (TYPE_1__*,int *,int**) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;

__attribute__((used)) static int aptx_decode_frame(AVCodecContext *avctx, void *data,
                             int *got_frame_ptr, AVPacket *avpkt)
{
    AptXContext *s = avctx->priv_data;
    AVFrame *frame = data;
    int pos, opos, channel, sample, ret;

    if (avpkt->size < s->block_size) {
        av_log(avctx, AV_LOG_ERROR, "Packet is too small\n");
        return AVERROR_INVALIDDATA;
    }


    frame->channels = NB_CHANNELS;
    frame->format = AV_SAMPLE_FMT_S32P;
    frame->nb_samples = 4 * avpkt->size / s->block_size;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;

    for (pos = 0, opos = 0; opos < frame->nb_samples; pos += s->block_size, opos += 4) {
        int32_t samples[NB_CHANNELS][4];

        if (aptx_decode_samples(s, &avpkt->data[pos], samples)) {
            av_log(avctx, AV_LOG_ERROR, "Synchronization error\n");
            return AVERROR_INVALIDDATA;
        }

        for (channel = 0; channel < NB_CHANNELS; channel++)
            for (sample = 0; sample < 4; sample++)
                AV_WN32A(&frame->data[channel][4*(opos+sample)],
                         samples[channel][sample] * 256);
    }

    *got_frame_ptr = 1;
    return s->block_size * frame->nb_samples / 4;
}
