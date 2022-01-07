
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int bits_per_raw_sample; int channels; TYPE_1__* priv_data; } ;
struct TYPE_14__ {scalar_t__ nb_samples; int extended_data; } ;
struct TYPE_13__ {int size; } ;
struct TYPE_12__ {scalar_t__ frame_size; int max_coded_frame_size; int verbatim; scalar_t__ extra_bits; scalar_t__ compression_level; } ;
typedef TYPE_1__ AlacEncodeContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 scalar_t__ DEFAULT_FRAME_SIZE ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_2__*,int,int ) ;
 int get_max_frame_size (scalar_t__,int ,int ) ;
 int write_frame (TYPE_1__*,TYPE_2__*,int ) ;

__attribute__((used)) static int alac_encode_frame(AVCodecContext *avctx, AVPacket *avpkt,
                             const AVFrame *frame, int *got_packet_ptr)
{
    AlacEncodeContext *s = avctx->priv_data;
    int out_bytes, max_frame_size, ret;

    s->frame_size = frame->nb_samples;

    if (frame->nb_samples < DEFAULT_FRAME_SIZE)
        max_frame_size = get_max_frame_size(s->frame_size, avctx->channels,
                                            avctx->bits_per_raw_sample);
    else
        max_frame_size = s->max_coded_frame_size;

    if ((ret = ff_alloc_packet2(avctx, avpkt, 4 * max_frame_size, 0)) < 0)
        return ret;


    if (s->compression_level) {
        s->verbatim = 0;
        s->extra_bits = avctx->bits_per_raw_sample - 16;
    } else {
        s->verbatim = 1;
        s->extra_bits = 0;
    }

    out_bytes = write_frame(s, avpkt, frame->extended_data);

    if (out_bytes > max_frame_size) {

        s->verbatim = 1;
        s->extra_bits = 0;
        out_bytes = write_frame(s, avpkt, frame->extended_data);
    }

    avpkt->size = out_bytes;
    *got_packet_ptr = 1;
    return 0;
}
