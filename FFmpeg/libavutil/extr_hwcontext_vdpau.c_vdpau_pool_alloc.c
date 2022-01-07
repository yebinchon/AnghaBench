
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int surf ;
typedef scalar_t__ VdpVideoSurface ;
typedef scalar_t__ VdpStatus ;
struct TYPE_13__ {int chroma_type; } ;
typedef TYPE_4__ VDPAUFramesContext ;
struct TYPE_14__ {scalar_t__ (* surf_create ) (int ,int ,int ,int ,scalar_t__*) ;int (* surf_destroy ) (scalar_t__) ;} ;
typedef TYPE_5__ VDPAUDeviceContext ;
struct TYPE_16__ {int height; int width; TYPE_3__* device_ctx; TYPE_1__* internal; } ;
struct TYPE_15__ {int device; } ;
struct TYPE_12__ {TYPE_2__* internal; TYPE_6__* hwctx; } ;
struct TYPE_11__ {TYPE_5__* priv; } ;
struct TYPE_10__ {TYPE_4__* priv; } ;
typedef TYPE_6__ AVVDPAUDeviceContext ;
typedef TYPE_7__ AVHWFramesContext ;
typedef int AVBufferRef ;


 int AV_BUFFER_FLAG_READONLY ;
 int AV_LOG_ERROR ;
 scalar_t__ VDP_STATUS_OK ;
 int * av_buffer_create (int *,int,int ,TYPE_7__*,int ) ;
 int av_log (TYPE_7__*,int ,char*) ;
 scalar_t__ stub1 (int ,int ,int ,int ,scalar_t__*) ;
 int stub2 (scalar_t__) ;
 int vdpau_buffer_free ;

__attribute__((used)) static AVBufferRef *vdpau_pool_alloc(void *opaque, int size)
{
    AVHWFramesContext *ctx = opaque;
    VDPAUFramesContext *priv = ctx->internal->priv;
    AVVDPAUDeviceContext *device_hwctx = ctx->device_ctx->hwctx;
    VDPAUDeviceContext *device_priv = ctx->device_ctx->internal->priv;

    AVBufferRef *ret;
    VdpVideoSurface surf;
    VdpStatus err;

    err = device_priv->surf_create(device_hwctx->device, priv->chroma_type,
                                   ctx->width, ctx->height, &surf);
    if (err != VDP_STATUS_OK) {
        av_log(ctx, AV_LOG_ERROR, "Error allocating a VDPAU video surface\n");
        return ((void*)0);
    }

    ret = av_buffer_create((uint8_t*)(uintptr_t)surf, sizeof(surf),
                           vdpau_buffer_free, ctx, AV_BUFFER_FLAG_READONLY);
    if (!ret) {
        device_priv->surf_destroy(surf);
        return ((void*)0);
    }

    return ret;
}
