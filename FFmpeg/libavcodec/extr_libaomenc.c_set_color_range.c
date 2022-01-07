
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int aom_color_range_t ;
struct TYPE_5__ {int color_range; } ;
typedef TYPE_1__ AVCodecContext ;


 int AOM_CR_FULL_RANGE ;
 int AOM_CR_STUDIO_RANGE ;
 int AV1E_SET_COLOR_RANGE ;



 int AV_LOG_WARNING ;
 int av_log (TYPE_1__*,int ,char*,int) ;
 int codecctl_int (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void set_color_range(AVCodecContext *avctx)
{
    aom_color_range_t aom_cr;
    switch (avctx->color_range) {
    case 128:
    case 129: aom_cr = AOM_CR_STUDIO_RANGE; break;
    case 130: aom_cr = AOM_CR_FULL_RANGE; break;
    default:
        av_log(avctx, AV_LOG_WARNING, "Unsupported color range (%d)\n",
               avctx->color_range);
        return;
    }

    codecctl_int(avctx, AV1E_SET_COLOR_RANGE, aom_cr);
}
