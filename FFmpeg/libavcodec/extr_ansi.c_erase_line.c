
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv_data; } ;
struct TYPE_6__ {int font_height; int y; TYPE_1__* frame; } ;
struct TYPE_5__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_2__ AnsiContext ;
typedef TYPE_3__ AVCodecContext ;


 int DEFAULT_BG_COLOR ;
 int memset (scalar_t__,int ,int) ;

__attribute__((used)) static void erase_line(AVCodecContext * avctx, int xoffset, int xlength)
{
    AnsiContext *s = avctx->priv_data;
    int i;
    for (i = 0; i < s->font_height; i++)
        memset(s->frame->data[0] + (s->y + i)*s->frame->linesize[0] + xoffset,
            DEFAULT_BG_COLOR, xlength);
}
