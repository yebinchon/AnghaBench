
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_17__ {scalar_t__ data; } ;
struct TYPE_16__ {TYPE_1__* internal; } ;
struct TYPE_15__ {struct TYPE_15__* hwctx; struct TYPE_15__* internal; struct TYPE_15__* priv; TYPE_2__ const* hw_type; void* sw_format; void* format; TYPE_4__* device_ctx; TYPE_5__* device_ref; int * av_class; } ;
struct TYPE_14__ {int frames_priv_size; int frames_hwctx_size; } ;
struct TYPE_13__ {TYPE_2__* hw_type; } ;
typedef TYPE_2__ HWContextType ;
typedef TYPE_3__ AVHWFramesContext ;
typedef TYPE_4__ AVHWDeviceContext ;
typedef TYPE_5__ AVBufferRef ;


 int AV_BUFFER_FLAG_READONLY ;
 void* AV_PIX_FMT_NONE ;
 TYPE_5__* av_buffer_create (int *,int,int ,int *,int ) ;
 TYPE_5__* av_buffer_ref (TYPE_5__*) ;
 int av_buffer_unref (TYPE_5__**) ;
 int av_freep (TYPE_3__**) ;
 void* av_mallocz (int) ;
 int hwframe_ctx_class ;
 int hwframe_ctx_free ;

AVBufferRef *av_hwframe_ctx_alloc(AVBufferRef *device_ref_in)
{
    AVHWDeviceContext *device_ctx = (AVHWDeviceContext*)device_ref_in->data;
    const HWContextType *hw_type = device_ctx->internal->hw_type;
    AVHWFramesContext *ctx;
    AVBufferRef *buf, *device_ref = ((void*)0);

    ctx = av_mallocz(sizeof(*ctx));
    if (!ctx)
        return ((void*)0);

    ctx->internal = av_mallocz(sizeof(*ctx->internal));
    if (!ctx->internal)
        goto fail;

    if (hw_type->frames_priv_size) {
        ctx->internal->priv = av_mallocz(hw_type->frames_priv_size);
        if (!ctx->internal->priv)
            goto fail;
    }

    if (hw_type->frames_hwctx_size) {
        ctx->hwctx = av_mallocz(hw_type->frames_hwctx_size);
        if (!ctx->hwctx)
            goto fail;
    }

    device_ref = av_buffer_ref(device_ref_in);
    if (!device_ref)
        goto fail;

    buf = av_buffer_create((uint8_t*)ctx, sizeof(*ctx),
                           hwframe_ctx_free, ((void*)0),
                           AV_BUFFER_FLAG_READONLY);
    if (!buf)
        goto fail;

    ctx->av_class = &hwframe_ctx_class;
    ctx->device_ref = device_ref;
    ctx->device_ctx = device_ctx;
    ctx->format = AV_PIX_FMT_NONE;
    ctx->sw_format = AV_PIX_FMT_NONE;

    ctx->internal->hw_type = hw_type;

    return buf;

fail:
    if (device_ref)
        av_buffer_unref(&device_ref);
    if (ctx->internal)
        av_freep(&ctx->internal->priv);
    av_freep(&ctx->internal);
    av_freep(&ctx->hwctx);
    av_freep(&ctx);
    return ((void*)0);
}
