
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {struct TYPE_7__* internal; struct TYPE_7__* priv; struct TYPE_7__* hwctx; int device_ref; int source_frames; int (* free ) (TYPE_2__*) ;TYPE_1__* hw_type; scalar_t__ pool_internal; } ;
struct TYPE_6__ {int (* frames_uninit ) (TYPE_2__*) ;} ;
typedef TYPE_2__ AVHWFramesContext ;


 int av_buffer_pool_uninit (scalar_t__*) ;
 int av_buffer_unref (int *) ;
 int av_freep (TYPE_2__**) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static void hwframe_ctx_free(void *opaque, uint8_t *data)
{
    AVHWFramesContext *ctx = (AVHWFramesContext*)data;

    if (ctx->internal->pool_internal)
        av_buffer_pool_uninit(&ctx->internal->pool_internal);

    if (ctx->internal->hw_type->frames_uninit)
        ctx->internal->hw_type->frames_uninit(ctx);

    if (ctx->free)
        ctx->free(ctx);

    av_buffer_unref(&ctx->internal->source_frames);

    av_buffer_unref(&ctx->device_ref);

    av_freep(&ctx->hwctx);
    av_freep(&ctx->internal->priv);
    av_freep(&ctx->internal);
    av_freep(&ctx);
}
