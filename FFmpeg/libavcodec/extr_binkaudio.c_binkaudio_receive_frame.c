
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {int size; int data; } ;
struct TYPE_17__ {int channels; TYPE_1__* codec; TYPE_2__* priv_data; } ;
struct TYPE_16__ {int nb_samples; scalar_t__ extended_data; } ;
struct TYPE_15__ {int frame_len; int block_size; TYPE_8__* pkt; int gb; } ;
struct TYPE_14__ {scalar_t__ id; } ;
typedef int GetBitContext ;
typedef TYPE_2__ BinkAudioContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 scalar_t__ AV_CODEC_ID_BINKAUDIO_DCT ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_4__*,int ,char*) ;
 int av_packet_unref (TYPE_8__*) ;
 scalar_t__ decode_block (TYPE_2__*,float**,int) ;
 int ff_decode_get_packet (TYPE_4__*,TYPE_8__*) ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int get_bits_align32 (int *) ;
 int get_bits_left (int *) ;
 int init_get_bits8 (int *,int ,int) ;
 int memset (int *,int ,int) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static int binkaudio_receive_frame(AVCodecContext *avctx, AVFrame *frame)
{
    BinkAudioContext *s = avctx->priv_data;
    GetBitContext *gb = &s->gb;
    int ret;

    if (!s->pkt->data) {
        ret = ff_decode_get_packet(avctx, s->pkt);
        if (ret < 0)
            return ret;

        if (s->pkt->size < 4) {
            av_log(avctx, AV_LOG_ERROR, "Packet is too small\n");
            ret = AVERROR_INVALIDDATA;
            goto fail;
        }

        ret = init_get_bits8(gb, s->pkt->data, s->pkt->size);
        if (ret < 0)
            goto fail;


        skip_bits_long(gb, 32);
    }


    frame->nb_samples = s->frame_len;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;

    if (decode_block(s, (float **)frame->extended_data,
                     avctx->codec->id == AV_CODEC_ID_BINKAUDIO_DCT)) {
        av_log(avctx, AV_LOG_ERROR, "Incomplete packet\n");
        return AVERROR_INVALIDDATA;
    }
    get_bits_align32(gb);
    if (!get_bits_left(gb)) {
        memset(gb, 0, sizeof(*gb));
        av_packet_unref(s->pkt);
    }

    frame->nb_samples = s->block_size / avctx->channels;

    return 0;
fail:
    av_packet_unref(s->pkt);
    return ret;
}
