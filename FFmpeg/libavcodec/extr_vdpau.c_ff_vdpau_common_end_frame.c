
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct vdpau_picture_context {int bitstream_buffers; int bitstream_buffers_used; int info; } ;
typedef int VdpVideoSurface ;
typedef int VdpStatus ;
struct TYPE_9__ {int decoder; int (* render ) (int ,int ,int *,int ,int ) ;} ;
typedef TYPE_2__ VDPAUContext ;
struct TYPE_11__ {TYPE_3__* hwaccel_context; TYPE_1__* internal; } ;
struct TYPE_10__ {int (* render2 ) (TYPE_4__*,int *,void*,int ,int ) ;int render; } ;
struct TYPE_8__ {TYPE_2__* hwaccel_priv_data; } ;
typedef TYPE_3__ AVVDPAUContext ;
typedef int AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int av_freep (int *) ;
 int ff_vdpau_common_reinit (TYPE_4__*) ;
 int ff_vdpau_get_surface_id (int *) ;
 int stub1 (TYPE_4__*,int *,void*,int ,int ) ;
 int stub2 (int ,int ,int *,int ,int ) ;
 int vdpau_error (int ) ;

int ff_vdpau_common_end_frame(AVCodecContext *avctx, AVFrame *frame,
                              struct vdpau_picture_context *pic_ctx)
{
    VDPAUContext *vdctx = avctx->internal->hwaccel_priv_data;
    AVVDPAUContext *hwctx = avctx->hwaccel_context;
    VdpVideoSurface surf = ff_vdpau_get_surface_id(frame);
    VdpStatus status;
    int val;

    val = ff_vdpau_common_reinit(avctx);
    if (val < 0)
        return val;

    if (hwctx && !hwctx->render && hwctx->render2) {
        status = hwctx->render2(avctx, frame, (void *)&pic_ctx->info,
                                pic_ctx->bitstream_buffers_used, pic_ctx->bitstream_buffers);
    } else
    status = vdctx->render(vdctx->decoder, surf, &pic_ctx->info,
                           pic_ctx->bitstream_buffers_used,
                           pic_ctx->bitstream_buffers);

    av_freep(&pic_ctx->bitstream_buffers);

    return vdpau_error(status);
}
