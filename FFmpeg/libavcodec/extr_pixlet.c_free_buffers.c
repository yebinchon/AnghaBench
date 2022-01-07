
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int prediction; int * filter; } ;
typedef TYPE_1__ PixletContext ;
typedef TYPE_2__ AVCodecContext ;


 int av_freep (int *) ;

__attribute__((used)) static void free_buffers(AVCodecContext *avctx)
{
    PixletContext *ctx = avctx->priv_data;

    av_freep(&ctx->filter[0]);
    av_freep(&ctx->filter[1]);
    av_freep(&ctx->prediction);
}
