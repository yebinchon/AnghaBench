
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
struct TYPE_3__ {int srcW; } ;
typedef TYPE_1__ SwsContext ;


 int av_clip_uint8 (int ) ;
 int lrintf (float) ;

__attribute__((used)) static int float_y_to_uint_y_wrapper(SwsContext *c, const uint8_t* src[],
                                     int srcStride[], int srcSliceY,
                                     int srcSliceH, uint8_t* dst[], int dstStride[])
{
    int y, x;
    ptrdiff_t srcStrideFloat = srcStride[0] >> 2;
    const float *srcPtr = (const float *)src[0];
    uint8_t *dstPtr = dst[0] + dstStride[0] * srcSliceY;

    for (y = 0; y < srcSliceH; ++y){
        for (x = 0; x < c->srcW; ++x){
            dstPtr[x] = av_clip_uint8(lrintf(255.0f * srcPtr[x]));
        }
        srcPtr += srcStrideFloat;
        dstPtr += dstStride[0];
    }

    return srcSliceH;
}
