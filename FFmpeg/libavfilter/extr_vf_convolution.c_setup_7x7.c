
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int FFABS (int) ;

__attribute__((used)) static void setup_7x7(int radius, const uint8_t *c[], const uint8_t *src, int stride,
                      int x, int w, int y, int h, int bpc)
{
    int i;

    for (i = 0; i < 49; i++) {
        int xoff = FFABS(x + ((i % 7) - 3));
        int yoff = FFABS(y + (i / 7) - 3);

        xoff = xoff >= w ? 2 * w - 1 - xoff : xoff;
        yoff = yoff >= h ? 2 * h - 1 - yoff : yoff;

        c[i] = src + xoff * bpc + yoff * stride;
    }
}
