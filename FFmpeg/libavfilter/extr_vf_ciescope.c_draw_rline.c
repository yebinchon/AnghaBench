
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int FFABS (int) ;

__attribute__((used)) static void draw_rline(uint16_t *const pixels, int linesize,
                       int x0, int y0, int x1, int y1,
                       int w, int h)
{
    int dx = FFABS(x1 - x0), sx = x0 < x1 ? 1 : -1;
    int dy = FFABS(y1 - y0), sy = y0 < y1 ? 1 : -1;
    int err = (dx > dy ? dx : -dy) / 2, e2;

    for (;;) {
        pixels[y0 * linesize + x0 * 4 + 0] = 65535 - pixels[y0 * linesize + x0 * 4 + 0];
        pixels[y0 * linesize + x0 * 4 + 1] = 65535 - pixels[y0 * linesize + x0 * 4 + 1];
        pixels[y0 * linesize + x0 * 4 + 2] = 65535 - pixels[y0 * linesize + x0 * 4 + 2];
        pixels[y0 * linesize + x0 * 4 + 3] = 65535;

        if (x0 == x1 && y0 == y1)
            break;

        e2 = err;

        if (e2 >-dx) {
            err -= dy;
            x0 += sx;
        }

        if (e2 < dy) {
            err += dx;
            y0 += sy;
        }
    }
}
