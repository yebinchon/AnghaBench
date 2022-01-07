
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int cursor_x; int cursor_hot_x; int cursor_y; int cursor_hot_y; int cursor_w; int cursor_h; int width; int height; int cursor_stride; int * cursor; } ;
typedef TYPE_1__ G2MContext ;


 int APPLY_ALPHA (int ,int const,int ) ;

__attribute__((used)) static void g2m_paint_cursor(G2MContext *c, uint8_t *dst, int stride)
{
    int i, j;
    int x, y, w, h;
    const uint8_t *cursor;

    if (!c->cursor)
        return;

    x = c->cursor_x - c->cursor_hot_x;
    y = c->cursor_y - c->cursor_hot_y;

    cursor = c->cursor;
    w = c->cursor_w;
    h = c->cursor_h;

    if (x + w > c->width)
        w = c->width - x;
    if (y + h > c->height)
        h = c->height - y;
    if (x < 0) {
        w += x;
        cursor += -x * 4;
    } else {
        dst += x * 3;
    }

    if (y < 0)
        h += y;
    if (w < 0 || h < 0)
        return;
    if (y < 0) {
        cursor += -y * c->cursor_stride;
    } else {
        dst += y * stride;
    }

    for (j = 0; j < h; j++) {
        for (i = 0; i < w; i++) {
            uint8_t alpha = cursor[i * 4];
            APPLY_ALPHA(dst[i * 3 + 0], cursor[i * 4 + 1], alpha);
            APPLY_ALPHA(dst[i * 3 + 1], cursor[i * 4 + 2], alpha);
            APPLY_ALPHA(dst[i * 3 + 2], cursor[i * 4 + 3], alpha);
        }
        dst += stride;
        cursor += c->cursor_stride;
    }
}
