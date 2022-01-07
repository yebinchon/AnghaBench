
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;
typedef int ProresContext ;


 int FFMIN (int,int const) ;
 int memcpy (int*,int const*,int const) ;

__attribute__((used)) static void get_alpha_data(ProresContext *ctx, const uint16_t *src,
                           ptrdiff_t linesize, int x, int y, int w, int h,
                           int16_t *blocks, int mbs_per_slice, int abits)
{
    const int slice_width = 16 * mbs_per_slice;
    int i, j, copy_w, copy_h;

    copy_w = FFMIN(w - x, slice_width);
    copy_h = FFMIN(h - y, 16);
    for (i = 0; i < copy_h; i++) {
        memcpy(blocks, src, copy_w * sizeof(*src));
        if (abits == 8)
            for (j = 0; j < copy_w; j++)
                blocks[j] >>= 2;
        else
            for (j = 0; j < copy_w; j++)
                blocks[j] = (blocks[j] << 6) | (blocks[j] >> 4);
        for (j = copy_w; j < slice_width; j++)
            blocks[j] = blocks[copy_w - 1];
        blocks += slice_width;
        src += linesize >> 1;
    }
    for (; i < 16; i++) {
        memcpy(blocks, blocks - slice_width, slice_width * sizeof(*blocks));
        blocks += slice_width;
    }
}
