
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int VdpChromaType ;
struct TYPE_9__ {scalar_t__ data; } ;
struct TYPE_8__ {int sw_pix_fmt; } ;
struct TYPE_7__ {void* height; void* width; int sw_format; int format; } ;
typedef TYPE_1__ AVHWFramesContext ;
typedef TYPE_2__ AVCodecContext ;
typedef TYPE_3__ AVBufferRef ;


 int AVERROR (int ) ;
 int AV_PIX_FMT_VDPAU ;
 int EINVAL ;
 scalar_t__ av_vdpau_get_surface_parameters (TYPE_2__*,int *,void**,void**) ;

int ff_vdpau_common_frame_params(AVCodecContext *avctx,
                                 AVBufferRef *hw_frames_ctx)
{
    AVHWFramesContext *hw_frames = (AVHWFramesContext*)hw_frames_ctx->data;
    VdpChromaType type;
    uint32_t width;
    uint32_t height;

    if (av_vdpau_get_surface_parameters(avctx, &type, &width, &height))
        return AVERROR(EINVAL);

    hw_frames->format = AV_PIX_FMT_VDPAU;
    hw_frames->sw_format = avctx->sw_pix_fmt;
    hw_frames->width = width;
    hw_frames->height = height;

    return 0;
}
