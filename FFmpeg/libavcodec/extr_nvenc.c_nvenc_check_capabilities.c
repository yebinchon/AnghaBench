
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int width; int height; int max_b_frames; int flags; scalar_t__ refs; TYPE_1__* priv_data; } ;
struct TYPE_7__ {scalar_t__ preset; scalar_t__ rc_lookahead; scalar_t__ temporal_aq; scalar_t__ weighted_pred; scalar_t__ coder; scalar_t__ b_ref_mode; void* support_dyn_bitrate; int data_pix_fmt; } ;
typedef TYPE_1__ NvencContext ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_CODEC_FLAG_INTERLACED_DCT ;
 int AV_LOG_WARNING ;
 int ENOSYS ;
 scalar_t__ IS_10BIT (int ) ;
 scalar_t__ IS_YUV444 (int ) ;
 scalar_t__ NV_ENC_BFRAME_REF_MODE_DISABLED ;
 scalar_t__ NV_ENC_BFRAME_REF_MODE_EACH ;
 int NV_ENC_CAPS_HEIGHT_MAX ;
 int NV_ENC_CAPS_NUM_MAX_BFRAMES ;
 int NV_ENC_CAPS_SUPPORT_10BIT_ENCODE ;
 int NV_ENC_CAPS_SUPPORT_BFRAME_REF_MODE ;
 int NV_ENC_CAPS_SUPPORT_CABAC ;
 int NV_ENC_CAPS_SUPPORT_DYN_BITRATE_CHANGE ;
 int NV_ENC_CAPS_SUPPORT_FIELD_ENCODING ;
 int NV_ENC_CAPS_SUPPORT_LOOKAHEAD ;
 int NV_ENC_CAPS_SUPPORT_LOSSLESS_ENCODE ;
 int NV_ENC_CAPS_SUPPORT_MULTIPLE_REF_FRAMES ;
 int NV_ENC_CAPS_SUPPORT_TEMPORAL_AQ ;
 int NV_ENC_CAPS_SUPPORT_WEIGHTED_PREDICTION ;
 int NV_ENC_CAPS_SUPPORT_YUV444_ENCODE ;
 int NV_ENC_CAPS_WIDTH_MAX ;
 scalar_t__ NV_ENC_H264_ENTROPY_CODING_MODE_CABAC ;
 scalar_t__ NV_ENC_NUM_REF_FRAMES_AUTOSELECT ;
 scalar_t__ PRESET_LOSSLESS_DEFAULT ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 void* nvenc_check_cap (TYPE_2__*,int ) ;
 int nvenc_check_codec_support (TYPE_2__*) ;

__attribute__((used)) static int nvenc_check_capabilities(AVCodecContext *avctx)
{
    NvencContext *ctx = avctx->priv_data;
    int ret;

    ret = nvenc_check_codec_support(avctx);
    if (ret < 0) {
        av_log(avctx, AV_LOG_WARNING, "Codec not supported\n");
        return ret;
    }

    ret = nvenc_check_cap(avctx, NV_ENC_CAPS_SUPPORT_YUV444_ENCODE);
    if (IS_YUV444(ctx->data_pix_fmt) && ret <= 0) {
        av_log(avctx, AV_LOG_WARNING, "YUV444P not supported\n");
        return AVERROR(ENOSYS);
    }

    ret = nvenc_check_cap(avctx, NV_ENC_CAPS_SUPPORT_LOSSLESS_ENCODE);
    if (ctx->preset >= PRESET_LOSSLESS_DEFAULT && ret <= 0) {
        av_log(avctx, AV_LOG_WARNING, "Lossless encoding not supported\n");
        return AVERROR(ENOSYS);
    }

    ret = nvenc_check_cap(avctx, NV_ENC_CAPS_WIDTH_MAX);
    if (ret < avctx->width) {
        av_log(avctx, AV_LOG_WARNING, "Width %d exceeds %d\n",
               avctx->width, ret);
        return AVERROR(ENOSYS);
    }

    ret = nvenc_check_cap(avctx, NV_ENC_CAPS_HEIGHT_MAX);
    if (ret < avctx->height) {
        av_log(avctx, AV_LOG_WARNING, "Height %d exceeds %d\n",
               avctx->height, ret);
        return AVERROR(ENOSYS);
    }

    ret = nvenc_check_cap(avctx, NV_ENC_CAPS_NUM_MAX_BFRAMES);
    if (ret < avctx->max_b_frames) {
        av_log(avctx, AV_LOG_WARNING, "Max B-frames %d exceed %d\n",
               avctx->max_b_frames, ret);

        return AVERROR(ENOSYS);
    }

    ret = nvenc_check_cap(avctx, NV_ENC_CAPS_SUPPORT_FIELD_ENCODING);
    if (ret < 1 && avctx->flags & AV_CODEC_FLAG_INTERLACED_DCT) {
        av_log(avctx, AV_LOG_WARNING,
               "Interlaced encoding is not supported. Supported level: %d\n",
               ret);
        return AVERROR(ENOSYS);
    }

    ret = nvenc_check_cap(avctx, NV_ENC_CAPS_SUPPORT_10BIT_ENCODE);
    if (IS_10BIT(ctx->data_pix_fmt) && ret <= 0) {
        av_log(avctx, AV_LOG_WARNING, "10 bit encode not supported\n");
        return AVERROR(ENOSYS);
    }

    ret = nvenc_check_cap(avctx, NV_ENC_CAPS_SUPPORT_LOOKAHEAD);
    if (ctx->rc_lookahead > 0 && ret <= 0) {
        av_log(avctx, AV_LOG_WARNING, "RC lookahead not supported\n");
        return AVERROR(ENOSYS);
    }

    ret = nvenc_check_cap(avctx, NV_ENC_CAPS_SUPPORT_TEMPORAL_AQ);
    if (ctx->temporal_aq > 0 && ret <= 0) {
        av_log(avctx, AV_LOG_WARNING, "Temporal AQ not supported\n");
        return AVERROR(ENOSYS);
    }

    ret = nvenc_check_cap(avctx, NV_ENC_CAPS_SUPPORT_WEIGHTED_PREDICTION);
    if (ctx->weighted_pred > 0 && ret <= 0) {
        av_log (avctx, AV_LOG_WARNING, "Weighted Prediction not supported\n");
        return AVERROR(ENOSYS);
    }

    ret = nvenc_check_cap(avctx, NV_ENC_CAPS_SUPPORT_CABAC);
    if (ctx->coder == NV_ENC_H264_ENTROPY_CODING_MODE_CABAC && ret <= 0) {
        av_log(avctx, AV_LOG_WARNING, "CABAC entropy coding not supported\n");
        return AVERROR(ENOSYS);
    }
    if (ctx->b_ref_mode != 0) {
        av_log(avctx, AV_LOG_WARNING, "B frames as references need SDK 8.1 at build time\n");
        return AVERROR(ENOSYS);
    }
    if(avctx->refs != 0) {
        av_log(avctx, AV_LOG_WARNING, "Multiple reference frames need SDK 9.1 at build time\n");
        return AVERROR(ENOSYS);
    }


    ctx->support_dyn_bitrate = nvenc_check_cap(avctx, NV_ENC_CAPS_SUPPORT_DYN_BITRATE_CHANGE);

    return 0;
}
