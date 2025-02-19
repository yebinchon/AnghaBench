
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_20__ {int spec; TYPE_4__* SUs; } ;
struct TYPE_19__ {int log2_block_count; } ;
struct TYPE_18__ {int channels; int block_align; TYPE_5__* priv_data; } ;
struct TYPE_17__ {scalar_t__* extended_data; int nb_samples; } ;
struct TYPE_16__ {int size; int * data; } ;
typedef int GetBitContext ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;
typedef TYPE_4__ AT1SUCtx ;
typedef TYPE_5__ AT1Ctx ;


 int AT1_SU_SAMPLES ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int at1_imdct_block (TYPE_4__*,TYPE_5__*) ;
 int at1_parse_bsm (int *,int ) ;
 int at1_subband_synthesis (TYPE_5__*,TYPE_4__*,float*) ;
 int at1_unpack_dequant (int *,TYPE_4__*,int ) ;
 int av_log (TYPE_3__*,int ,char*) ;
 int ff_get_buffer (TYPE_3__*,TYPE_2__*,int ) ;
 int init_get_bits (int *,int const*,int) ;

__attribute__((used)) static int atrac1_decode_frame(AVCodecContext *avctx, void *data,
                               int *got_frame_ptr, AVPacket *avpkt)
{
    AVFrame *frame = data;
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    AT1Ctx *q = avctx->priv_data;
    int ch, ret;
    GetBitContext gb;


    if (buf_size < 212 * avctx->channels) {
        av_log(avctx, AV_LOG_ERROR, "Not enough data to decode!\n");
        return AVERROR_INVALIDDATA;
    }


    frame->nb_samples = AT1_SU_SAMPLES;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;

    for (ch = 0; ch < avctx->channels; ch++) {
        AT1SUCtx* su = &q->SUs[ch];

        init_get_bits(&gb, &buf[212 * ch], 212 * 8);


        ret = at1_parse_bsm(&gb, su->log2_block_count);
        if (ret < 0)
            return ret;

        ret = at1_unpack_dequant(&gb, su, q->spec);
        if (ret < 0)
            return ret;

        ret = at1_imdct_block(su, q);
        if (ret < 0)
            return ret;
        at1_subband_synthesis(q, su, (float *)frame->extended_data[ch]);
    }

    *got_frame_ptr = 1;

    return avctx->block_align;
}
