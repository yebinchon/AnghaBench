
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int const int16_t ;
struct TYPE_12__ {int initial_padding; int trellis; int * priv_data; } ;
struct TYPE_11__ {int nb_samples; scalar_t__ pts; scalar_t__* data; } ;
struct TYPE_10__ {scalar_t__ pts; int * data; } ;
typedef int G722Context ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 scalar_t__ AV_NOPTS_VALUE ;
 int encode_byte (int *,int *,int const*) ;
 int ff_alloc_packet2 (TYPE_3__*,TYPE_1__*,int,int ) ;
 scalar_t__ ff_samples_to_time_base (TYPE_3__*,int ) ;
 int g722_encode_no_trellis (int *,int *,int,int const*) ;
 int g722_encode_trellis (int *,int ,int *,int,int const*) ;

__attribute__((used)) static int g722_encode_frame(AVCodecContext *avctx, AVPacket *avpkt,
                             const AVFrame *frame, int *got_packet_ptr)
{
    G722Context *c = avctx->priv_data;
    const int16_t *samples = (const int16_t *)frame->data[0];
    int nb_samples, out_size, ret;

    out_size = (frame->nb_samples + 1) / 2;
    if ((ret = ff_alloc_packet2(avctx, avpkt, out_size, 0)) < 0)
        return ret;

    nb_samples = frame->nb_samples - (frame->nb_samples & 1);

    if (avctx->trellis)
        g722_encode_trellis(c, avctx->trellis, avpkt->data, nb_samples, samples);
    else
        g722_encode_no_trellis(c, avpkt->data, nb_samples, samples);


    if (nb_samples < frame->nb_samples) {
        int16_t last_samples[2] = { samples[nb_samples], samples[nb_samples] };
        encode_byte(c, &avpkt->data[nb_samples >> 1], last_samples);
    }

    if (frame->pts != AV_NOPTS_VALUE)
        avpkt->pts = frame->pts - ff_samples_to_time_base(avctx, avctx->initial_padding);
    *got_packet_ptr = 1;
    return 0;
}
