
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int cursor_x; int cursor_hot_x; int cursor_y; int cursor_hot_y; int cursor_w; int cursor_h; int width; int height; int cursor_stride; int * cursor; } ;
typedef TYPE_1__ TDSCContext ;
typedef TYPE_2__ AVCodecContext ;


 int APPLY_ALPHA (int ,int const,int ) ;

__attribute__((used)) static void tdsc_paint_cursor(AVCodecContext *avctx, uint8_t *dst, int stride)
{
    TDSCContext *ctx = avctx->priv_data;
    const uint8_t *cursor = ctx->cursor;
    int x = ctx->cursor_x - ctx->cursor_hot_x;
    int y = ctx->cursor_y - ctx->cursor_hot_y;
    int w = ctx->cursor_w;
    int h = ctx->cursor_h;
    int i, j;

    if (!ctx->cursor)
        return;

    if (x + w > ctx->width)
        w = ctx->width - x;
    if (y + h > ctx->height)
        h = ctx->height - y;
    if (x < 0) {
        w += x;
        cursor += -x * 4;
    } else {
        dst += x * 3;
    }
    if (y < 0) {
        h += y;
        cursor += -y * ctx->cursor_stride;
    } else {
        dst += y * stride;
    }
    if (w < 0 || h < 0)
        return;

    for (j = 0; j < h; j++) {
        for (i = 0; i < w; i++) {
            uint8_t alpha = cursor[i * 4];
            APPLY_ALPHA(dst[i * 3 + 0], cursor[i * 4 + 1], alpha);
            APPLY_ALPHA(dst[i * 3 + 1], cursor[i * 4 + 2], alpha);
            APPLY_ALPHA(dst[i * 3 + 2], cursor[i * 4 + 3], alpha);
        }
        dst += stride;
        cursor += ctx->cursor_stride;
    }
}
