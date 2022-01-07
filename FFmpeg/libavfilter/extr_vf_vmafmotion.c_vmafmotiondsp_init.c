
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sad; int convolution_y; int convolution_x; } ;
typedef TYPE_1__ VMAFMotionDSPContext ;


 int convolution_x ;
 int convolution_y_10bit ;
 int convolution_y_8bit ;
 int image_sad ;

__attribute__((used)) static void vmafmotiondsp_init(VMAFMotionDSPContext *dsp, int bpp) {
    dsp->convolution_x = convolution_x;
    dsp->convolution_y = bpp == 10 ? convolution_y_10bit : convolution_y_8bit;
    dsp->sad = image_sad;
}
