
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int frame; } ;
typedef TYPE_1__ MsrleContext ;
typedef TYPE_2__ AVCodecContext ;


 int av_frame_unref (int ) ;

__attribute__((used)) static void msrle_decode_flush(AVCodecContext *avctx)
{
    MsrleContext *s = avctx->priv_data;

    av_frame_unref(s->frame);
}
