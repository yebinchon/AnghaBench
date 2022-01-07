
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int av_clip_uint8 (int) ;

__attribute__((used)) static void fade(uint8_t *dst, ptrdiff_t dst_linesize,
                 const uint8_t *src, ptrdiff_t src_linesize,
                 int width, int height,
                 int alpha, int beta)
{
    int i, j;
    for (j = 0; j < height; j++) {
        const uint8_t *src2 = src + j * src_linesize;
        uint8_t *dst2 = dst + j * dst_linesize;
        for (i = 0; i < width; i++) {
            uint8_t y = src2[i];
            dst2[i] = av_clip_uint8(y + ((y * beta) >> 8) + alpha);
        }
    }
}
