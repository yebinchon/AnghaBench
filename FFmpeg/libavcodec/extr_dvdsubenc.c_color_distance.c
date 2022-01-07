
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static int color_distance(uint32_t a, uint32_t b)
{
    int r = 0, d, i;
    int alpha_a = 8, alpha_b = 8;

    for (i = 24; i >= 0; i -= 8) {
        d = alpha_a * (int)((a >> i) & 0xFF) -
            alpha_b * (int)((b >> i) & 0xFF);
        r += d * d;
        alpha_a = a >> 28;
        alpha_b = b >> 28;
    }
    return r;
}
