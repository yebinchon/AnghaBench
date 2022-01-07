
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int intra_period; int bits_per_second; scalar_t__ kf_auto; scalar_t__ error_resilient; scalar_t__ frame_height_scale; scalar_t__ frame_width_scale; int frame_height; int frame_width; } ;
typedef TYPE_1__ VAEncSequenceParameterBufferVP8 ;
struct TYPE_6__ {int va_rc_mode; int gop_size; int va_bit_rate; TYPE_1__* codec_sequence_params; } ;
typedef TYPE_2__ VAAPIEncodeContext ;
struct TYPE_7__ {int height; int width; TYPE_2__* priv_data; } ;
typedef TYPE_3__ AVCodecContext ;


 int VA_RC_CQP ;

__attribute__((used)) static int vaapi_encode_vp8_init_sequence_params(AVCodecContext *avctx)
{
    VAAPIEncodeContext *ctx = avctx->priv_data;
    VAEncSequenceParameterBufferVP8 *vseq = ctx->codec_sequence_params;

    vseq->frame_width = avctx->width;
    vseq->frame_height = avctx->height;

    vseq->frame_width_scale = 0;
    vseq->frame_height_scale = 0;

    vseq->error_resilient = 0;
    vseq->kf_auto = 0;

    if (!(ctx->va_rc_mode & VA_RC_CQP)) {
        vseq->bits_per_second = ctx->va_bit_rate;
        vseq->intra_period = ctx->gop_size;
    }

    return 0;
}
