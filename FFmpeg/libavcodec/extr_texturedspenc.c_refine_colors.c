
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int ptrdiff_t ;


 int av_clip_uintp2 (int,int) ;
 int** match5 ;
 int** match6 ;

__attribute__((used)) static int refine_colors(const uint8_t *block, ptrdiff_t stride,
                         uint16_t *pmax16, uint16_t *pmin16, uint32_t mask)
{
    uint32_t cm = mask;
    uint16_t oldMin = *pmin16;
    uint16_t oldMax = *pmax16;
    uint16_t min16, max16;
    int x, y;




    static const int w1tab[4] = { 3, 0, 2, 1 };
    static const int prods[4] = { 0x090000, 0x000900, 0x040102, 0x010402 };


    if ((mask ^ (mask << 2)) < 4) {


        int r = 8, g = 8, b = 8;
        for (y = 0; y < 4; y++) {
            for (x = 0; x < 4; x++) {
                r += block[0 + x * 4 + y * stride];
                g += block[1 + x * 4 + y * stride];
                b += block[2 + x * 4 + y * stride];
            }
        }

        r >>= 4;
        g >>= 4;
        b >>= 4;

        max16 = (match5[r][0] << 11) | (match6[g][0] << 5) | match5[b][0];
        min16 = (match5[r][1] << 11) | (match6[g][1] << 5) | match5[b][1];
    } else {
        float fr, fg, fb;
        int at1_r = 0, at1_g = 0, at1_b = 0;
        int at2_r = 0, at2_g = 0, at2_b = 0;
        int akku = 0;
        int xx, xy, yy;

        for (y = 0; y < 4; y++) {
            for (x = 0; x < 4; x++) {
                int step = cm & 3;
                int w1 = w1tab[step];
                int r = block[0 + x * 4 + y * stride];
                int g = block[1 + x * 4 + y * stride];
                int b = block[2 + x * 4 + y * stride];

                akku += prods[step];
                at1_r += w1 * r;
                at1_g += w1 * g;
                at1_b += w1 * b;
                at2_r += r;
                at2_g += g;
                at2_b += b;

                cm >>= 2;
            }
        }

        at2_r = 3 * at2_r - at1_r;
        at2_g = 3 * at2_g - at1_g;
        at2_b = 3 * at2_b - at1_b;


        xx = akku >> 16;
        yy = (akku >> 8) & 0xFF;
        xy = (akku >> 0) & 0xFF;

        fr = 3.0f * 31.0f / 255.0f / (xx * yy - xy * xy);
        fg = fr * 63.0f / 31.0f;
        fb = fr;


        max16 = av_clip_uintp2((at1_r * yy - at2_r * xy) * fr + 0.5f, 5) << 11;
        max16 |= av_clip_uintp2((at1_g * yy - at2_g * xy) * fg + 0.5f, 6) << 5;
        max16 |= av_clip_uintp2((at1_b * yy - at2_b * xy) * fb + 0.5f, 5) << 0;

        min16 = av_clip_uintp2((at2_r * xx - at1_r * xy) * fr + 0.5f, 5) << 11;
        min16 |= av_clip_uintp2((at2_g * xx - at1_g * xy) * fg + 0.5f, 6) << 5;
        min16 |= av_clip_uintp2((at2_b * xx - at1_b * xy) * fb + 0.5f, 5) << 0;
    }

    *pmin16 = min16;
    *pmax16 = max16;
    return oldMin != min16 || oldMax != max16;
}
