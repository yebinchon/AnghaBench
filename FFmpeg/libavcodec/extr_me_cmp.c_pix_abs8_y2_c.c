
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int ptrdiff_t ;
typedef int MpegEncContext ;


 scalar_t__ abs (scalar_t__) ;
 scalar_t__ avg2 (scalar_t__,scalar_t__) ;

__attribute__((used)) static int pix_abs8_y2_c(MpegEncContext *v, uint8_t *pix1, uint8_t *pix2,
                         ptrdiff_t stride, int h)
{
    int s = 0, i;
    uint8_t *pix3 = pix2 + stride;

    for (i = 0; i < h; i++) {
        s += abs(pix1[0] - avg2(pix2[0], pix3[0]));
        s += abs(pix1[1] - avg2(pix2[1], pix3[1]));
        s += abs(pix1[2] - avg2(pix2[2], pix3[2]));
        s += abs(pix1[3] - avg2(pix2[3], pix3[3]));
        s += abs(pix1[4] - avg2(pix2[4], pix3[4]));
        s += abs(pix1[5] - avg2(pix2[5], pix3[5]));
        s += abs(pix1[6] - avg2(pix2[6], pix3[6]));
        s += abs(pix1[7] - avg2(pix2[7], pix3[7]));
        pix1 += stride;
        pix2 += stride;
        pix3 += stride;
    }
    return s;
}
