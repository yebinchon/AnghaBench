
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ srcFormat; int chrSrcW; int srcW; } ;
typedef TYPE_1__ SwsContext ;


 scalar_t__ AV_PIX_FMT_NV24 ;
 int copyPlane (int const*,int,int,int,int ,int *,int) ;
 int deinterleaveBytes (int const*,int *,int *,int ,int,int,int,int) ;

__attribute__((used)) static int nv24ToPlanarWrapper(SwsContext *c, const uint8_t *src[],
                               int srcStride[], int srcSliceY,
                               int srcSliceH, uint8_t *dstParam[],
                               int dstStride[])
{
    uint8_t *dst1 = dstParam[1] + dstStride[1] * srcSliceY;
    uint8_t *dst2 = dstParam[2] + dstStride[2] * srcSliceY;

    copyPlane(src[0], srcStride[0], srcSliceY, srcSliceH, c->srcW,
              dstParam[0], dstStride[0]);

    if (c->srcFormat == AV_PIX_FMT_NV24)
        deinterleaveBytes(src[1], dst1, dst2, c->chrSrcW, srcSliceH,
                          srcStride[1], dstStride[1], dstStride[2]);
    else
        deinterleaveBytes(src[1], dst2, dst1, c->chrSrcW, srcSliceH,
                          srcStride[1], dstStride[2], dstStride[1]);

    return srcSliceH;
}
