
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int last_frame_buffer; int frame_buffer; } ;
typedef TYPE_1__ KgvContext ;
typedef TYPE_2__ AVCodecContext ;


 int av_freep (int *) ;

__attribute__((used)) static void decode_flush(AVCodecContext *avctx)
{
    KgvContext * const c = avctx->priv_data;

    av_freep(&c->frame_buffer);
    av_freep(&c->last_frame_buffer);
}
