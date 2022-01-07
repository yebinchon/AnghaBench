
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bits_per_raw_sample; int sample_fmt; } ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_SAMPLE_FMT_S16P ;
 int AV_SAMPLE_FMT_S32P ;
 int AV_SAMPLE_FMT_U8P ;
 int av_log (TYPE_1__*,int ,char*,int) ;

__attribute__((used)) static int set_bps_params(AVCodecContext *avctx)
{
    switch (avctx->bits_per_raw_sample) {
    case 8:
        avctx->sample_fmt = AV_SAMPLE_FMT_U8P;
        break;
    case 16:
        avctx->sample_fmt = AV_SAMPLE_FMT_S16P;
        break;
    case 24:
        avctx->sample_fmt = AV_SAMPLE_FMT_S32P;
        break;
    default:
        av_log(avctx, AV_LOG_ERROR, "invalid/unsupported bits per sample: %d\n",
               avctx->bits_per_raw_sample);
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
