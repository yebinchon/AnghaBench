
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 size_t A ;
 size_t B ;
 size_t G ;
 size_t R ;

__attribute__((used)) static void add_hfyu_left_pred_bgr32_c(uint8_t *dst, const uint8_t *src,
                                       intptr_t w, uint8_t *left)
{
    int i;
    uint8_t r = left[R], g = left[G], b = left[B], a = left[A];

    for (i = 0; i < w; i++) {
        b += src[4 * i + B];
        g += src[4 * i + G];
        r += src[4 * i + R];
        a += src[4 * i + A];

        dst[4 * i + B] = b;
        dst[4 * i + G] = g;
        dst[4 * i + R] = r;
        dst[4 * i + A] = a;
    }

    left[B] = b;
    left[G] = g;
    left[R] = r;
    left[A] = a;
}
