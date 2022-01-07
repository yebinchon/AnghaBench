
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int device_ref; int input_frames_ref; int (* pipeline_uninit ) (TYPE_2__*) ;scalar_t__ valid_ids; } ;
typedef TYPE_1__ VAAPIVPPContext ;
struct TYPE_6__ {TYPE_1__* priv; } ;
typedef TYPE_2__ AVFilterContext ;


 int av_buffer_unref (int *) ;
 int stub1 (TYPE_2__*) ;

void ff_vaapi_vpp_ctx_uninit(AVFilterContext *avctx)
{
    VAAPIVPPContext *ctx = avctx->priv;
    if (ctx->valid_ids && ctx->pipeline_uninit)
        ctx->pipeline_uninit(avctx);

    av_buffer_unref(&ctx->input_frames_ref);
    av_buffer_unref(&ctx->device_ref);
}
