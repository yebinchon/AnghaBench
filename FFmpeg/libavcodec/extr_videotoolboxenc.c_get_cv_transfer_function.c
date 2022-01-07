
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVColorTransferCharacteristic { ____Placeholder_AVColorTransferCharacteristic } AVColorTransferCharacteristic ;
struct TYPE_6__ {int * kCVImageBufferTransferFunction_ITU_R_2020; } ;
struct TYPE_5__ {int color_trc; } ;
typedef double Float32 ;
typedef int * CFStringRef ;
typedef int * CFNumberRef ;
typedef TYPE_1__ AVCodecContext ;
 int AV_LOG_ERROR ;
 int * CFNumberCreate (int *,int ,double*) ;
 int av_color_transfer_name (int) ;
 int av_log (TYPE_1__*,int ,char*,int ) ;
 TYPE_3__ compat_keys ;
 int kCFNumberFloat32Type ;
 int * kCVImageBufferTransferFunction_ITU_R_2100_HLG ;
 int * kCVImageBufferTransferFunction_ITU_R_709_2 ;
 int * kCVImageBufferTransferFunction_Linear ;
 int * kCVImageBufferTransferFunction_SMPTE_240M_1995 ;
 int * kCVImageBufferTransferFunction_SMPTE_ST_2084_PQ ;
 int * kCVImageBufferTransferFunction_UseGamma ;

__attribute__((used)) static int get_cv_transfer_function(AVCodecContext *avctx,
                                    CFStringRef *transfer_fnc,
                                    CFNumberRef *gamma_level)
{
    enum AVColorTransferCharacteristic trc = avctx->color_trc;
    Float32 gamma;
    *gamma_level = ((void*)0);

    switch (trc) {
        case 128:
            *transfer_fnc = ((void*)0);
            break;

        case 134:
            *transfer_fnc = kCVImageBufferTransferFunction_ITU_R_709_2;
            break;

        case 129:
            *transfer_fnc = kCVImageBufferTransferFunction_SMPTE_240M_1995;
            break;
        case 133:
            gamma = 2.2;
            *transfer_fnc = kCVImageBufferTransferFunction_UseGamma;
            *gamma_level = CFNumberCreate(((void*)0), kCFNumberFloat32Type, &gamma);
            break;

        case 132:
            gamma = 2.8;
            *transfer_fnc = kCVImageBufferTransferFunction_UseGamma;
            *gamma_level = CFNumberCreate(((void*)0), kCFNumberFloat32Type, &gamma);
            break;

        case 136:
        case 135:
            *transfer_fnc = compat_keys.kCVImageBufferTransferFunction_ITU_R_2020;
            break;

        default:
            *transfer_fnc = ((void*)0);
            av_log(avctx, AV_LOG_ERROR, "Transfer function %s is not supported.\n", av_color_transfer_name(trc));
            return -1;
    }

    return 0;
}
