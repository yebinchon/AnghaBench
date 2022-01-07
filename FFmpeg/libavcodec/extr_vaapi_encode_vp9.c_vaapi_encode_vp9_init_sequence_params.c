
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int intra_period; int bits_per_second; scalar_t__ kf_auto; int max_frame_height; int max_frame_width; } ;
typedef TYPE_1__ VAEncSequenceParameterBufferVP9 ;
struct TYPE_7__ {int frame_height_dst; int frame_width_dst; int frame_height_src; int frame_width_src; } ;
typedef TYPE_2__ VAEncPictureParameterBufferVP9 ;
struct TYPE_8__ {int va_rc_mode; int gop_size; int va_bit_rate; TYPE_2__* codec_picture_params; TYPE_1__* codec_sequence_params; } ;
typedef TYPE_3__ VAAPIEncodeContext ;
struct TYPE_9__ {int height; int width; TYPE_3__* priv_data; } ;
typedef TYPE_4__ AVCodecContext ;


 int VA_RC_CQP ;

__attribute__((used)) static int vaapi_encode_vp9_init_sequence_params(AVCodecContext *avctx)
{
    VAAPIEncodeContext *ctx = avctx->priv_data;
    VAEncSequenceParameterBufferVP9 *vseq = ctx->codec_sequence_params;
    VAEncPictureParameterBufferVP9 *vpic = ctx->codec_picture_params;

    vseq->max_frame_width = avctx->width;
    vseq->max_frame_height = avctx->height;

    vseq->kf_auto = 0;

    if (!(ctx->va_rc_mode & VA_RC_CQP)) {
        vseq->bits_per_second = ctx->va_bit_rate;
        vseq->intra_period = ctx->gop_size;
    }

    vpic->frame_width_src = avctx->width;
    vpic->frame_height_src = avctx->height;
    vpic->frame_width_dst = avctx->width;
    vpic->frame_height_dst = avctx->height;

    return 0;
}
