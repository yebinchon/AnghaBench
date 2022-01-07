
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int mfxMemId ;
struct TYPE_19__ {TYPE_5__* hwctx; TYPE_2__* device_ctx; TYPE_1__* internal; } ;
struct TYPE_18__ {int nb_surfaces; TYPE_10__* surfaces; void* frame_type; int surface_type; int surface_ids; } ;
struct TYPE_17__ {TYPE_10__* surfaces_internal; } ;
struct TYPE_16__ {int MemId; } ;
struct TYPE_15__ {int type; } ;
struct TYPE_14__ {TYPE_4__* priv; } ;
struct TYPE_13__ {TYPE_3__ Data; } ;
typedef TYPE_4__ QSVFramesContext ;
typedef TYPE_5__ AVVAAPIFramesContext ;
typedef TYPE_5__ AVQSVFramesContext ;
typedef TYPE_7__ AVHWFramesContext ;
typedef TYPE_5__ AVDXVA2FramesContext ;


 int AVERROR (int ) ;


 int DXVA2_VideoProcessorRenderTarget ;
 int ENOMEM ;
 int ENOSYS ;
 void* MFX_MEMTYPE_VIDEO_MEMORY_DECODER_TARGET ;
 void* MFX_MEMTYPE_VIDEO_MEMORY_PROCESSOR_TARGET ;
 void* av_mallocz_array (int,int) ;
 int qsv_init_surface (TYPE_7__*,TYPE_10__*) ;

__attribute__((used)) static int qsv_frames_derive_to(AVHWFramesContext *dst_ctx,
                                AVHWFramesContext *src_ctx, int flags)
{
    QSVFramesContext *s = dst_ctx->internal->priv;
    AVQSVFramesContext *dst_hwctx = dst_ctx->hwctx;
    int i;

    switch (src_ctx->device_ctx->type) {
    default:
        return AVERROR(ENOSYS);
    }

    dst_hwctx->surfaces = s->surfaces_internal;

    return 0;
}
