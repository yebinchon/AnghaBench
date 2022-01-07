
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;
struct TYPE_6__ {int type; struct TYPE_6__* hwctx; struct TYPE_6__* internal; struct TYPE_6__* priv; TYPE_1__ const* hw_type; int * av_class; } ;
struct TYPE_5__ {int type; int device_priv_size; int device_hwctx_size; } ;
typedef TYPE_1__ HWContextType ;
typedef TYPE_2__ AVHWDeviceContext ;
typedef int AVBufferRef ;


 int AV_BUFFER_FLAG_READONLY ;
 int * av_buffer_create (int *,int,int ,int *,int ) ;
 int av_freep (TYPE_2__**) ;
 void* av_mallocz (int) ;
 TYPE_1__** hw_table ;
 int hwdevice_ctx_class ;
 int hwdevice_ctx_free ;

AVBufferRef *av_hwdevice_ctx_alloc(enum AVHWDeviceType type)
{
    AVHWDeviceContext *ctx;
    AVBufferRef *buf;
    const HWContextType *hw_type = ((void*)0);
    int i;

    for (i = 0; hw_table[i]; i++) {
        if (hw_table[i]->type == type) {
            hw_type = hw_table[i];
            break;
        }
    }
    if (!hw_type)
        return ((void*)0);

    ctx = av_mallocz(sizeof(*ctx));
    if (!ctx)
        return ((void*)0);

    ctx->internal = av_mallocz(sizeof(*ctx->internal));
    if (!ctx->internal)
        goto fail;

    if (hw_type->device_priv_size) {
        ctx->internal->priv = av_mallocz(hw_type->device_priv_size);
        if (!ctx->internal->priv)
            goto fail;
    }

    if (hw_type->device_hwctx_size) {
        ctx->hwctx = av_mallocz(hw_type->device_hwctx_size);
        if (!ctx->hwctx)
            goto fail;
    }

    buf = av_buffer_create((uint8_t*)ctx, sizeof(*ctx),
                           hwdevice_ctx_free, ((void*)0),
                           AV_BUFFER_FLAG_READONLY);
    if (!buf)
        goto fail;

    ctx->type = type;
    ctx->av_class = &hwdevice_ctx_class;

    ctx->internal->hw_type = hw_type;

    return buf;

fail:
    if (ctx->internal)
        av_freep(&ctx->internal->priv);
    av_freep(&ctx->internal);
    av_freep(&ctx->hwctx);
    av_freep(&ctx);
    return ((void*)0);
}
