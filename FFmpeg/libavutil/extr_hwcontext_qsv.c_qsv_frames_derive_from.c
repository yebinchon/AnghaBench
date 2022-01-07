
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int VASurfaceID ;
struct TYPE_14__ {TYPE_4__* hwctx; TYPE_1__* device_ctx; } ;
struct TYPE_13__ {int nb_surfaces; int surface_type; int frame_type; int ** surfaces; int * surface_ids; } ;
struct TYPE_12__ {scalar_t__ MemId; } ;
struct TYPE_11__ {TYPE_3__ Data; } ;
struct TYPE_10__ {int type; } ;
typedef int IDirect3DSurface9 ;
typedef TYPE_4__ AVVAAPIFramesContext ;
typedef TYPE_4__ AVQSVFramesContext ;
typedef TYPE_6__ AVHWFramesContext ;
typedef TYPE_4__ AVDXVA2FramesContext ;


 int AVERROR (int ) ;


 int DXVA2_VideoDecoderRenderTarget ;
 int DXVA2_VideoProcessorRenderTarget ;
 int ENOMEM ;
 int ENOSYS ;
 int MFX_MEMTYPE_VIDEO_MEMORY_DECODER_TARGET ;
 void* av_mallocz_array (int,int) ;

__attribute__((used)) static int qsv_frames_derive_from(AVHWFramesContext *dst_ctx,
                                  AVHWFramesContext *src_ctx, int flags)
{
    AVQSVFramesContext *src_hwctx = src_ctx->hwctx;
    int i;

    switch (dst_ctx->device_ctx->type) {
    default:
        return AVERROR(ENOSYS);
    }

    return 0;
}
