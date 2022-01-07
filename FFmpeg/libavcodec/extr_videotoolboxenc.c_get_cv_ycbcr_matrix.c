
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * kCVImageBufferYCbCrMatrix_ITU_R_2020; } ;
struct TYPE_5__ {int colorspace; } ;
typedef int * CFStringRef ;
typedef TYPE_1__ AVCodecContext ;
 int AV_LOG_ERROR ;
 int av_color_space_name (int) ;
 int av_log (TYPE_1__*,int ,char*,int ) ;
 TYPE_3__ compat_keys ;
 int * kCVImageBufferYCbCrMatrix_ITU_R_601_4 ;
 int * kCVImageBufferYCbCrMatrix_ITU_R_709_2 ;
 int * kCVImageBufferYCbCrMatrix_SMPTE_240M_1995 ;

__attribute__((used)) static int get_cv_ycbcr_matrix(AVCodecContext *avctx, CFStringRef *matrix) {
    switch(avctx->colorspace) {
        case 131:
            *matrix = kCVImageBufferYCbCrMatrix_ITU_R_709_2;
            break;

        case 128:
            *matrix = ((void*)0);
            break;

        case 132:
        case 130:
            *matrix = kCVImageBufferYCbCrMatrix_ITU_R_601_4;
            break;

        case 129:
            *matrix = kCVImageBufferYCbCrMatrix_SMPTE_240M_1995;
            break;

        case 133:
            *matrix = compat_keys.kCVImageBufferYCbCrMatrix_ITU_R_2020;
            break;

        default:
            av_log(avctx, AV_LOG_ERROR, "Color space %s is not supported.\n", av_color_space_name(avctx->colorspace));
            return -1;
    }

    return 0;
}
