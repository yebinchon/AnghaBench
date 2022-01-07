
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ycbcr_matrix; scalar_t__ transfer_function; scalar_t__ color_primaries; } ;
typedef TYPE_1__ VTEncContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef int CFMutableDictionaryRef ;
typedef TYPE_2__ AVCodecContext ;


 int CFDictionarySetValue (int ,int ,scalar_t__) ;
 int kCVImageBufferColorPrimariesKey ;
 int kCVImageBufferTransferFunctionKey ;
 int kCVImageBufferYCbCrMatrixKey ;

__attribute__((used)) static void add_color_attr(AVCodecContext *avctx, CFMutableDictionaryRef dict) {
    VTEncContext *vtctx = avctx->priv_data;

    if (vtctx->color_primaries) {
        CFDictionarySetValue(dict,
                             kCVImageBufferColorPrimariesKey,
                             vtctx->color_primaries);
    }

    if (vtctx->transfer_function) {
        CFDictionarySetValue(dict,
                             kCVImageBufferTransferFunctionKey,
                             vtctx->transfer_function);
    }

    if (vtctx->ycbcr_matrix) {
        CFDictionarySetValue(dict,
                             kCVImageBufferYCbCrMatrixKey,
                             vtctx->ycbcr_matrix);
    }
}
