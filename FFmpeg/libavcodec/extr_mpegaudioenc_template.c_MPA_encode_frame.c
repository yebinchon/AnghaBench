
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_19__ {int initial_padding; TYPE_1__* priv_data; } ;
struct TYPE_18__ {scalar_t__ pts; scalar_t__* data; } ;
struct TYPE_17__ {int size; scalar_t__ pts; int data; } ;
struct TYPE_16__ {int nb_channels; int pb; int sblimit; int * sb_samples; int * scale_factors; int * scale_code; } ;
typedef TYPE_1__ MpegAudioContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 scalar_t__ AV_NOPTS_VALUE ;
 int MPA_MAX_CHANNELS ;
 int MPA_MAX_CODED_FRAME_SIZE ;
 int SBLIMIT ;
 int compute_bit_allocation (TYPE_1__*,short**,unsigned char**,int*) ;
 int compute_scale_factors (TYPE_1__*,int ,int ,int ,int ) ;
 int encode_frame (TYPE_1__*,unsigned char**,int) ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_2__*,int ,int ) ;
 scalar_t__ ff_samples_to_time_base (TYPE_4__*,int ) ;
 int filter (TYPE_1__*,int,int const*,int) ;
 int init_put_bits (int *,int ,int) ;
 int psycho_acoustic_model (TYPE_1__*,short*) ;
 int put_bits_count (int *) ;

__attribute__((used)) static int MPA_encode_frame(AVCodecContext *avctx, AVPacket *avpkt,
                            const AVFrame *frame, int *got_packet_ptr)
{
    MpegAudioContext *s = avctx->priv_data;
    const int16_t *samples = (const int16_t *)frame->data[0];
    short smr[MPA_MAX_CHANNELS][SBLIMIT];
    unsigned char bit_alloc[MPA_MAX_CHANNELS][SBLIMIT];
    int padding, i, ret;

    for(i=0;i<s->nb_channels;i++) {
        filter(s, i, samples + i, s->nb_channels);
    }

    for(i=0;i<s->nb_channels;i++) {
        compute_scale_factors(s, s->scale_code[i], s->scale_factors[i],
                              s->sb_samples[i], s->sblimit);
    }
    for(i=0;i<s->nb_channels;i++) {
        psycho_acoustic_model(s, smr[i]);
    }
    compute_bit_allocation(s, smr, bit_alloc, &padding);

    if ((ret = ff_alloc_packet2(avctx, avpkt, MPA_MAX_CODED_FRAME_SIZE, 0)) < 0)
        return ret;

    init_put_bits(&s->pb, avpkt->data, avpkt->size);

    encode_frame(s, bit_alloc, padding);

    if (frame->pts != AV_NOPTS_VALUE)
        avpkt->pts = frame->pts - ff_samples_to_time_base(avctx, avctx->initial_padding);

    avpkt->size = put_bits_count(&s->pb) / 8;
    *got_packet_ptr = 1;
    return 0;
}
