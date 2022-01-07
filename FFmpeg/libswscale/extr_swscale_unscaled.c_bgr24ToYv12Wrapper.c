
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int srcW; int input_rgb2yuv_table; } ;
typedef TYPE_1__ SwsContext ;


 int ff_rgb24toyv12 (int const*,int *,int *,int *,int ,int,int,int,int,int ) ;
 int fillPlane (int *,int,int ,int,int,int) ;

__attribute__((used)) static int bgr24ToYv12Wrapper(SwsContext *c, const uint8_t *src[],
                              int srcStride[], int srcSliceY, int srcSliceH,
                              uint8_t *dst[], int dstStride[])
{
    ff_rgb24toyv12(
        src[0],
        dst[0] + srcSliceY * dstStride[0],
        dst[1] + (srcSliceY >> 1) * dstStride[1],
        dst[2] + (srcSliceY >> 1) * dstStride[2],
        c->srcW, srcSliceH,
        dstStride[0], dstStride[1], srcStride[0],
        c->input_rgb2yuv_table);
    if (dst[3])
        fillPlane(dst[3], dstStride[3], c->srcW, srcSliceH, srcSliceY, 255);
    return srcSliceH;
}
