
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int tmpl; int last_frame; scalar_t__ buf_size; int buf; int lzw; } ;
typedef TYPE_1__ GIFContext ;
typedef TYPE_2__ AVCodecContext ;


 int av_frame_free (int *) ;
 int av_freep (int *) ;

__attribute__((used)) static int gif_encode_close(AVCodecContext *avctx)
{
    GIFContext *s = avctx->priv_data;

    av_freep(&s->lzw);
    av_freep(&s->buf);
    s->buf_size = 0;
    av_frame_free(&s->last_frame);
    av_freep(&s->tmpl);
    return 0;
}
