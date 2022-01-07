
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int AV_RN16A (int const*) ;
 int av_clip (float,int ,int) ;
 float sqrtf (float) ;

__attribute__((used)) static void filter16_roberts(uint8_t *dstp, int width,
                             float scale, float delta, const int *const matrix,
                             const uint8_t *c[], int peak, int radius,
                             int dstride, int stride)
{
    uint16_t *dst = (uint16_t *)dstp;
    int x;

    for (x = 0; x < width; x++) {
        float suma = AV_RN16A(&c[0][2 * x]) * 1 + AV_RN16A(&c[1][2 * x]) * -1;
        float sumb = AV_RN16A(&c[4][2 * x]) * 1 + AV_RN16A(&c[3][2 * x]) * -1;

        dst[x] = av_clip(sqrtf(suma*suma + sumb*sumb) * scale + delta, 0, peak);
    }
}
