
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int height; int width; TYPE_2__* priv_data; } ;
struct TYPE_6__ {int y; int font_height; TYPE_1__* frame; } ;
struct TYPE_5__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_2__ AnsiContext ;
typedef TYPE_3__ AVCodecContext ;


 int DEFAULT_BG_COLOR ;
 int memcpy (scalar_t__,scalar_t__,int ) ;
 int memset (scalar_t__,int ,int ) ;

__attribute__((used)) static void hscroll(AVCodecContext *avctx)
{
    AnsiContext *s = avctx->priv_data;
    int i;

    if (s->y <= avctx->height - 2*s->font_height) {
        s->y += s->font_height;
        return;
    }

    i = 0;
    for (; i < avctx->height - s->font_height; i++)
        memcpy(s->frame->data[0] + i * s->frame->linesize[0],
               s->frame->data[0] + (i + s->font_height) * s->frame->linesize[0],
               avctx->width);
    for (; i < avctx->height; i++)
        memset(s->frame->data[0] + i * s->frame->linesize[0],
            DEFAULT_BG_COLOR, avctx->width);
}
