
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int ptrdiff_t ;
struct TYPE_3__ {int srcW; float* uint2float_lut; } ;
typedef TYPE_1__ SwsContext ;



__attribute__((used)) static int uint_y_to_float_y_wrapper(SwsContext *c, const uint8_t *src[],
                                     int srcStride[], int srcSliceY,
                                     int srcSliceH, uint8_t *dst[], int dstStride[])
{
    int y, x;
    ptrdiff_t dstStrideFloat = dstStride[0] >> 2;
    const uint8_t *srcPtr = src[0];
    float *dstPtr = (float *)(dst[0] + dstStride[0] * srcSliceY);

    for (y = 0; y < srcSliceH; ++y){
        for (x = 0; x < c->srcW; ++x){
            dstPtr[x] = c->uint2float_lut[srcPtr[x]];
        }
        srcPtr += srcStride[0];
        dstPtr += dstStrideFloat;
    }

    return srcSliceH;
}
