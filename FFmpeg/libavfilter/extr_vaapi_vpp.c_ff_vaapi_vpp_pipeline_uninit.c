
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nb_filter_buffers; scalar_t__* filter_buffers; scalar_t__ va_context; scalar_t__ va_config; TYPE_1__* hwctx; int device_ref; } ;
typedef TYPE_2__ VAAPIVPPContext ;
struct TYPE_7__ {TYPE_2__* priv; } ;
struct TYPE_5__ {int display; } ;
typedef TYPE_3__ AVFilterContext ;


 scalar_t__ VA_INVALID_ID ;
 int av_buffer_unref (int *) ;
 int vaDestroyBuffer (int ,scalar_t__) ;
 int vaDestroyConfig (int ,scalar_t__) ;
 int vaDestroyContext (int ,scalar_t__) ;

void ff_vaapi_vpp_pipeline_uninit(AVFilterContext *avctx)
{
    VAAPIVPPContext *ctx = avctx->priv;
    int i;
    for (i = 0; i < ctx->nb_filter_buffers; i++) {
        if (ctx->filter_buffers[i] != VA_INVALID_ID) {
            vaDestroyBuffer(ctx->hwctx->display, ctx->filter_buffers[i]);
            ctx->filter_buffers[i] = VA_INVALID_ID;
        }
    }
    ctx->nb_filter_buffers = 0;

    if (ctx->va_context != VA_INVALID_ID) {
        vaDestroyContext(ctx->hwctx->display, ctx->va_context);
        ctx->va_context = VA_INVALID_ID;
    }

    if (ctx->va_config != VA_INVALID_ID) {
        vaDestroyConfig(ctx->hwctx->display, ctx->va_config);
        ctx->va_config = VA_INVALID_ID;
    }

    av_buffer_unref(&ctx->device_ref);
    ctx->hwctx = ((void*)0);
}
