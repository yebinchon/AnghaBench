
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int prev_frame; } ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVCodecContext ;
typedef TYPE_2__ AGMContext ;


 int av_frame_unref (int ) ;

__attribute__((used)) static void decode_flush(AVCodecContext *avctx)
{
    AGMContext *s = avctx->priv_data;

    av_frame_unref(s->prev_frame);
}
