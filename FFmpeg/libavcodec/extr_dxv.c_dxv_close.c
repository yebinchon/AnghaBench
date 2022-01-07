
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int * op_data; int ctex_data; int tex_data; } ;
typedef TYPE_1__ DXVContext ;
typedef TYPE_2__ AVCodecContext ;


 int av_freep (int *) ;

__attribute__((used)) static int dxv_close(AVCodecContext *avctx)
{
    DXVContext *ctx = avctx->priv_data;

    av_freep(&ctx->tex_data);
    av_freep(&ctx->ctex_data);
    av_freep(&ctx->op_data[0]);
    av_freep(&ctx->op_data[1]);
    av_freep(&ctx->op_data[2]);
    av_freep(&ctx->op_data[3]);

    return 0;
}
