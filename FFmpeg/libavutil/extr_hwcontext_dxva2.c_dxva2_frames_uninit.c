
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int devmgr; } ;
struct TYPE_12__ {int nb_surfaces; scalar_t__ decoder_to_release; } ;
struct TYPE_11__ {TYPE_2__* internal; TYPE_5__* hwctx; TYPE_1__* device_ctx; } ;
struct TYPE_10__ {scalar_t__ device_handle; int * service; scalar_t__* surfaces_internal; } ;
struct TYPE_9__ {TYPE_3__* priv; } ;
struct TYPE_8__ {TYPE_6__* hwctx; } ;
typedef TYPE_3__ DXVA2FramesContext ;
typedef TYPE_4__ AVHWFramesContext ;
typedef TYPE_5__ AVDXVA2FramesContext ;
typedef TYPE_6__ AVDXVA2DeviceContext ;


 int IDirect3DDeviceManager9_CloseDeviceHandle (int ,scalar_t__) ;
 int IDirect3DSurface9_Release (scalar_t__) ;
 int IDirectXVideoAccelerationService_Release (int *) ;
 int IDirectXVideoDecoder_Release (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int av_freep (scalar_t__**) ;

__attribute__((used)) static void dxva2_frames_uninit(AVHWFramesContext *ctx)
{
    AVDXVA2DeviceContext *device_hwctx = ctx->device_ctx->hwctx;
    AVDXVA2FramesContext *frames_hwctx = ctx->hwctx;
    DXVA2FramesContext *s = ctx->internal->priv;
    int i;

    if (frames_hwctx->decoder_to_release)
        IDirectXVideoDecoder_Release(frames_hwctx->decoder_to_release);

    if (s->surfaces_internal) {
        for (i = 0; i < frames_hwctx->nb_surfaces; i++) {
            if (s->surfaces_internal[i])
                IDirect3DSurface9_Release(s->surfaces_internal[i]);
        }
    }
    av_freep(&s->surfaces_internal);

    if (s->service) {
        IDirectXVideoAccelerationService_Release(s->service);
        s->service = ((void*)0);
    }

    if (s->device_handle != INVALID_HANDLE_VALUE) {
        IDirect3DDeviceManager9_CloseDeviceHandle(device_hwctx->devmgr, s->device_handle);
        s->device_handle = INVALID_HANDLE_VALUE;
    }
}
