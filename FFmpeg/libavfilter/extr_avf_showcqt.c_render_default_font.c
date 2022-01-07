
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int** data; int* linesize; } ;
typedef TYPE_1__ AVFrame ;


 int* avpriv_vga16_font ;

__attribute__((used)) static int render_default_font(AVFrame *tmp)
{
    const char *str = "EF G A BC D ";
    int x, u, v, mask;
    uint8_t *data = tmp->data[0];
    int linesize = tmp->linesize[0];
    int width = 1920/2, height = 16;

    for (x = 0; x < width; x += width/10) {
        uint8_t *startptr = data + 4 * x;
        for (u = 0; u < 12; u++) {
            for (v = 0; v < height; v++) {
                uint8_t *p = startptr + v * linesize + height/2 * 4 * u;
                for (mask = 0x80; mask; mask >>= 1, p += 4) {
                    if (mask & avpriv_vga16_font[str[u] * 16 + v])
                        p[3] = 255;
                    else
                        p[3] = 0;
                }
            }
        }
    }

    return 0;
}
