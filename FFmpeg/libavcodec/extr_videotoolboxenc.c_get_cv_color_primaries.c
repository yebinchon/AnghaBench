
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVColorPrimaries { ____Placeholder_AVColorPrimaries } AVColorPrimaries ;
struct TYPE_6__ {int * kCVImageBufferColorPrimaries_ITU_R_2020; } ;
struct TYPE_5__ {int color_primaries; } ;
typedef int * CFStringRef ;
typedef TYPE_1__ AVCodecContext ;





 int AV_LOG_ERROR ;
 int av_color_primaries_name (int) ;
 int av_log (TYPE_1__*,int ,char*,int ) ;
 TYPE_3__ compat_keys ;
 int * kCVImageBufferColorPrimaries_ITU_R_709_2 ;

__attribute__((used)) static int get_cv_color_primaries(AVCodecContext *avctx,
                                  CFStringRef *primaries)
{
    enum AVColorPrimaries pri = avctx->color_primaries;
    switch (pri) {
        case 128:
            *primaries = ((void*)0);
            break;

        case 129:
            *primaries = kCVImageBufferColorPrimaries_ITU_R_709_2;
            break;

        case 130:
            *primaries = compat_keys.kCVImageBufferColorPrimaries_ITU_R_2020;
            break;

        default:
            av_log(avctx, AV_LOG_ERROR, "Color primaries %s is not supported.\n", av_color_primaries_name(pri));
            *primaries = ((void*)0);
            return -1;
    }

    return 0;
}
