
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int y; int font_height; scalar_t__ x; int font; TYPE_1__* frame; } ;
typedef TYPE_2__ XbinContext ;
struct TYPE_7__ {int height; scalar_t__ width; TYPE_2__* priv_data; } ;
struct TYPE_5__ {scalar_t__* data; int* linesize; } ;
typedef TYPE_3__ AVCodecContext ;


 scalar_t__ FONT_WIDTH ;
 int ff_draw_pc_font (scalar_t__,int,int ,int,int,int,int) ;

__attribute__((used)) static void draw_char(AVCodecContext *avctx, int c, int a)
{
    XbinContext *s = avctx->priv_data;
    if (s->y > avctx->height - s->font_height)
        return;
    ff_draw_pc_font(s->frame->data[0] + s->y * s->frame->linesize[0] + s->x,
                    s->frame->linesize[0], s->font, s->font_height, c,
                    a & 0x0F, a >> 4);
    s->x += FONT_WIDTH;
    if (s->x > avctx->width - FONT_WIDTH) {
        s->x = 0;
        s->y += s->font_height;
    }
}
