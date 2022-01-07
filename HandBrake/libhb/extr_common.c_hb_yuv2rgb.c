
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double yuv ;



int hb_yuv2rgb(int yuv)
{
    double y, Cr, Cb;
    int r, g, b;

    y = (yuv >> 16) & 0xff;
    Cr = (yuv >> 8) & 0xff;
    Cb = (yuv ) & 0xff;

    r = 1.164 * (y - 16) + 1.596 * (Cr - 128);
    g = 1.164 * (y - 16) - 0.392 * (Cb - 128) - 0.813 * (Cr - 128);
    b = 1.164 * (y - 16) + 2.017 * (Cb - 128);

    r = (r < 0) ? 0 : r;
    g = (g < 0) ? 0 : g;
    b = (b < 0) ? 0 : b;

    r = (r > 255) ? 255 : r;
    g = (g > 255) ? 255 : g;
    b = (b > 255) ? 255 : b;

    return (r << 16) | (g << 8) | b;
}
