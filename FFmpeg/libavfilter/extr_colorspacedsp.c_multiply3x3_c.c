
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int int16_t ;


 int av_clip_int16 (int const) ;

__attribute__((used)) static void multiply3x3_c(int16_t *buf[3], ptrdiff_t stride,
                          int w, int h, const int16_t m[3][3][8])
{
    int y, x;
    int16_t *buf0 = buf[0], *buf1 = buf[1], *buf2 = buf[2];

    for (y = 0; y < h; y++) {
        for (x = 0; x < w; x++) {
            int v0 = buf0[x], v1 = buf1[x], v2 = buf2[x];

            buf0[x] = av_clip_int16((m[0][0][0] * v0 + m[0][1][0] * v1 +
                                     m[0][2][0] * v2 + 8192) >> 14);
            buf1[x] = av_clip_int16((m[1][0][0] * v0 + m[1][1][0] * v1 +
                                     m[1][2][0] * v2 + 8192) >> 14);
            buf2[x] = av_clip_int16((m[2][0][0] * v0 + m[2][1][0] * v1 +
                                     m[2][2][0] * v2 + 8192) >> 14);
        }

        buf0 += stride;
        buf1 += stride;
        buf2 += stride;
    }
}
