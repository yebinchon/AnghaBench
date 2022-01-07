
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int queue_count; int * frame_queue; } ;
typedef TYPE_1__ DeintVAAPIContext ;
typedef TYPE_2__ AVFilterContext ;


 int av_frame_free (int *) ;
 int ff_vaapi_vpp_pipeline_uninit (TYPE_2__*) ;

__attribute__((used)) static void deint_vaapi_pipeline_uninit(AVFilterContext *avctx)
{
    DeintVAAPIContext *ctx = avctx->priv;
    int i;

    for (i = 0; i < ctx->queue_count; i++)
        av_frame_free(&ctx->frame_queue[i]);
    ctx->queue_count = 0;

    ff_vaapi_vpp_pipeline_uninit(avctx);
}
