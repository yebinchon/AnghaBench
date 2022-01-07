
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int chrDstVSubSample; } ;
typedef TYPE_1__ SwsContext ;


 int FFABS (int) ;
 int FFMIN (int ,int ) ;
 int av_bswap16 (int const) ;

__attribute__((used)) static int bswap_16bpc(SwsContext *c, const uint8_t *src[],
                              int srcStride[], int srcSliceY, int srcSliceH,
                              uint8_t *dst[], int dstStride[])
{
    int i, j, p;

    for (p = 0; p < 4; p++) {
        int srcstr = srcStride[p] / 2;
        int dststr = dstStride[p] / 2;
        uint16_t *dstPtr = (uint16_t *) dst[p];
        const uint16_t *srcPtr = (const uint16_t *) src[p];
        int min_stride = FFMIN(FFABS(srcstr), FFABS(dststr));
        if(!dstPtr || !srcPtr)
            continue;
        dstPtr += (srcSliceY >> c->chrDstVSubSample) * dststr;
        for (i = 0; i < (srcSliceH >> c->chrDstVSubSample); i++) {
            for (j = 0; j < min_stride; j++) {
                dstPtr[j] = av_bswap16(srcPtr[j]);
            }
            srcPtr += srcstr;
            dstPtr += dststr;
        }
    }

    return srcSliceH;
}
