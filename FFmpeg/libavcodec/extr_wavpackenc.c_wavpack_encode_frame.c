
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
struct TYPE_16__ {int block_samples; int ch_offset; int flags; int sample_index; int * samples; TYPE_1__* avctx; int * samples_size; } ;
typedef TYPE_2__ WavPackEncodeContext ;
struct TYPE_19__ {int channels; TYPE_2__* priv_data; } ;
struct TYPE_18__ {int nb_samples; int pts; int * extended_data; } ;
struct TYPE_17__ {int size; int duration; int * data; int pts; } ;
struct TYPE_15__ {int sample_fmt; int bits_per_raw_sample; } ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR (int ) ;



 int ENOMEM ;
 int MAG_LSB ;
 int WV_CROSS_DECORR ;
 int WV_FLOAT_DATA ;
 int WV_MONO ;
 int av_fast_padded_malloc (int *,int *,int) ;
 int ff_alloc_packet2 (TYPE_5__*,TYPE_3__*,int,int ) ;
 int ff_samples_to_time_base (TYPE_5__*,int) ;
 int fill_buffer (TYPE_2__*,int ,int ,int) ;
 int set_samplerate (TYPE_2__*) ;
 int wavpack_encode_block (TYPE_2__*,int ,int ,int *,int) ;

__attribute__((used)) static int wavpack_encode_frame(AVCodecContext *avctx, AVPacket *avpkt,
                                const AVFrame *frame, int *got_packet_ptr)
{
    WavPackEncodeContext *s = avctx->priv_data;
    int buf_size, ret;
    uint8_t *buf;

    s->block_samples = frame->nb_samples;
    av_fast_padded_malloc(&s->samples[0], &s->samples_size[0],
                          sizeof(int32_t) * s->block_samples);
    if (!s->samples[0])
        return AVERROR(ENOMEM);
    if (avctx->channels > 1) {
        av_fast_padded_malloc(&s->samples[1], &s->samples_size[1],
                              sizeof(int32_t) * s->block_samples);
        if (!s->samples[1])
            return AVERROR(ENOMEM);
    }

    buf_size = s->block_samples * avctx->channels * 8
             + 200 * avctx->channels ;
    if ((ret = ff_alloc_packet2(avctx, avpkt, buf_size, 0)) < 0)
        return ret;
    buf = avpkt->data;

    for (s->ch_offset = 0; s->ch_offset < avctx->channels;) {
        set_samplerate(s);

        switch (s->avctx->sample_fmt) {
        case 129: s->flags |= 1; break;
        case 128: s->flags |= 3 - (s->avctx->bits_per_raw_sample <= 24); break;
        case 130: s->flags |= 3 | WV_FLOAT_DATA;
        }

        fill_buffer(s, frame->extended_data[s->ch_offset], s->samples[0], s->block_samples);
        if (avctx->channels - s->ch_offset == 1) {
            s->flags |= WV_MONO;
        } else {
            s->flags |= WV_CROSS_DECORR;
            fill_buffer(s, frame->extended_data[s->ch_offset + 1], s->samples[1], s->block_samples);
        }

        s->flags += (1 << MAG_LSB) * ((s->flags & 3) * 8 + 7);

        if ((ret = wavpack_encode_block(s, s->samples[0], s->samples[1],
                                        buf, buf_size)) < 0)
            return ret;

        buf += ret;
        buf_size -= ret;
    }
    s->sample_index += frame->nb_samples;

    avpkt->pts = frame->pts;
    avpkt->size = buf - avpkt->data;
    avpkt->duration = ff_samples_to_time_base(avctx, frame->nb_samples);
    *got_packet_ptr = 1;
    return 0;
}
