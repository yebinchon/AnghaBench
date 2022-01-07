
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef scalar_t__ int16_t ;


 size_t av_clip_uintp2 (scalar_t__,int) ;

__attribute__((used)) static void apply_lut(int16_t *buf[3], ptrdiff_t stride,
                      int w, int h, const int16_t *lut)
{
    int y, x, n;

    for (n = 0; n < 3; n++) {
        int16_t *data = buf[n];

        for (y = 0; y < h; y++) {
            for (x = 0; x < w; x++)
                data[x] = lut[av_clip_uintp2(2048 + data[x], 15)];

            data += stride;
        }
    }
}
