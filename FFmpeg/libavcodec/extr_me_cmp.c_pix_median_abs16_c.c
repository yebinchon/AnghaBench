
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int MpegEncContext ;


 scalar_t__ V (int) ;
 scalar_t__ abs (scalar_t__) ;
 scalar_t__ mid_pred (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline int pix_median_abs16_c(MpegEncContext *v, uint8_t *pix1, uint8_t *pix2,
                             ptrdiff_t stride, int h)
{
    int s = 0, i, j;



    s += abs((pix1[0] - pix2[0]));
    s += abs((pix1[1] - pix2[1]) - (pix1[0] - pix2[0]));
    s += abs((pix1[2] - pix2[2]) - (pix1[1] - pix2[1]));
    s += abs((pix1[3] - pix2[3]) - (pix1[2] - pix2[2]));
    s += abs((pix1[4] - pix2[4]) - (pix1[3] - pix2[3]));
    s += abs((pix1[5] - pix2[5]) - (pix1[4] - pix2[4]));
    s += abs((pix1[6] - pix2[6]) - (pix1[5] - pix2[5]));
    s += abs((pix1[7] - pix2[7]) - (pix1[6] - pix2[6]));
    s += abs((pix1[8] - pix2[8]) - (pix1[7] - pix2[7]));
    s += abs((pix1[9] - pix2[9]) - (pix1[8] - pix2[8]));
    s += abs((pix1[10] - pix2[10]) - (pix1[9] - pix2[9]));
    s += abs((pix1[11] - pix2[11]) - (pix1[10] - pix2[10]));
    s += abs((pix1[12] - pix2[12]) - (pix1[11] - pix2[11]));
    s += abs((pix1[13] - pix2[13]) - (pix1[12] - pix2[12]));
    s += abs((pix1[14] - pix2[14]) - (pix1[13] - pix2[13]));
    s += abs((pix1[15] - pix2[15]) - (pix1[14] - pix2[14]));

    pix1 += stride;
    pix2 += stride;

    for (i = 1; i < h; i++) {
        s += abs((pix1[0] - pix2[0]) - (pix1[-stride] - pix2[-stride]));
        for (j = 1; j < 16; j++)
            s += abs((pix1[j] - pix2[j]) - mid_pred((pix1[j-stride] - pix2[j-stride]), (pix1[j-1] - pix2[j-1]), (pix1[j-stride] - pix2[j-stride]) + (pix1[j-1] - pix2[j-1]) - (pix1[j-stride-1] - pix2[j-stride-1])));
        pix1 += stride;
        pix2 += stride;

    }

    return s;
}
