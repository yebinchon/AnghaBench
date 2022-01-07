
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ f; } ;
struct TYPE_6__ {TYPE_5__ current_frame; TYPE_5__ last_frame; TYPE_5__ golden_frame; } ;
typedef TYPE_1__ Vp3DecodeContext ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVCodecContext ;


 int ff_thread_release_buffer (TYPE_2__*,TYPE_5__*) ;

__attribute__((used)) static void vp3_decode_flush(AVCodecContext *avctx)
{
    Vp3DecodeContext *s = avctx->priv_data;

    if (s->golden_frame.f)
        ff_thread_release_buffer(avctx, &s->golden_frame);
    if (s->last_frame.f)
        ff_thread_release_buffer(avctx, &s->last_frame);
    if (s->current_frame.f)
        ff_thread_release_buffer(avctx, &s->current_frame);
}
