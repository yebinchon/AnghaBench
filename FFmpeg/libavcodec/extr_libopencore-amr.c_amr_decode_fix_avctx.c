
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ codec_id; int sample_rate; int channels; int sample_fmt; int channel_layout; } ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR_PATCHWELCOME ;
 int AV_CH_LAYOUT_MONO ;
 scalar_t__ AV_CODEC_ID_AMR_WB ;
 int AV_SAMPLE_FMT_S16 ;
 int avpriv_report_missing_feature (TYPE_1__*,char*) ;

__attribute__((used)) static int amr_decode_fix_avctx(AVCodecContext *avctx)
{
    const int is_amr_wb = 1 + (avctx->codec_id == AV_CODEC_ID_AMR_WB);

    if (!avctx->sample_rate)
        avctx->sample_rate = 8000 * is_amr_wb;

    if (avctx->channels > 1) {
        avpriv_report_missing_feature(avctx, "multi-channel AMR");
        return AVERROR_PATCHWELCOME;
    }

    avctx->channels = 1;
    avctx->channel_layout = AV_CH_LAYOUT_MONO;
    avctx->sample_fmt = AV_SAMPLE_FMT_S16;
    return 0;
}
