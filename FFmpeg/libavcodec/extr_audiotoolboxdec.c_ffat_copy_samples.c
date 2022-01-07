
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sample_fmt; int * priv_data; } ;
typedef int AVFrame ;
typedef TYPE_1__ AVCodecContext ;
typedef int ATDecodeContext ;


 scalar_t__ AV_SAMPLE_FMT_S32 ;
 int COPY_SAMPLES (int ) ;
 int int16_t ;
 int int32_t ;

__attribute__((used)) static void ffat_copy_samples(AVCodecContext *avctx, AVFrame *frame)
{
    ATDecodeContext *at = avctx->priv_data;
    if (avctx->sample_fmt == AV_SAMPLE_FMT_S32) {
        COPY_SAMPLES(int32_t);
    } else {
        COPY_SAMPLES(int16_t);
    }
}
