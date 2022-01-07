
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* priv_data; } ;
struct TYPE_9__ {int alignment; int underline; int italic; int bold; int back_color; int color; int fontsize; int font; } ;
struct TYPE_10__ {TYPE_1__ d; } ;
typedef TYPE_2__ MovTextContext ;
typedef TYPE_3__ AVCodecContext ;


 int ASS_DEFAULT_BORDERSTYLE ;
 int ff_ass_subtitle_header (TYPE_3__*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ff_ass_subtitle_header_default (TYPE_3__*) ;
 int mov_text_tx3g (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static int mov_text_init(AVCodecContext *avctx) {






    int ret;
    MovTextContext *m = avctx->priv_data;
    ret = mov_text_tx3g(avctx, m);
    if (ret == 0) {
        return ff_ass_subtitle_header(avctx, m->d.font, m->d.fontsize, m->d.color,
                                m->d.back_color, m->d.bold, m->d.italic,
                                m->d.underline, ASS_DEFAULT_BORDERSTYLE,
                                m->d.alignment);
    } else
        return ff_ass_subtitle_header_default(avctx);
}
