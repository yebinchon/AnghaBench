
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ mfxStatus ;
typedef int mfxSession ;
struct TYPE_10__ {int Free; int GetHDL; int Unlock; int Lock; int Alloc; TYPE_2__* pthis; } ;
typedef TYPE_1__ mfxFrameAllocator ;
struct TYPE_15__ {scalar_t__ data; } ;
struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_13__ {int device_ref; TYPE_3__* hwctx; } ;
struct TYPE_12__ {int nb_surfaces; } ;
struct TYPE_11__ {int nb_mids; TYPE_5__* mids_buf; int * mids; TYPE_6__* hw_frames_ctx; int * logctx; } ;
typedef int QSVMid ;
typedef TYPE_2__ QSVFramesContext ;
typedef TYPE_3__ AVQSVFramesContext ;
typedef TYPE_4__ AVHWFramesContext ;
typedef int AVCodecContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 scalar_t__ MFXVideoCORE_SetFrameAllocator (int ,TYPE_1__*) ;
 scalar_t__ MFX_ERR_NONE ;
 int av_buffer_unref (TYPE_5__**) ;
 int ff_qsv_init_session_device (int *,int *,int ,char const*,int) ;
 int ff_qsv_print_error (int *,scalar_t__,char*) ;
 TYPE_5__* qsv_create_mids (TYPE_6__*) ;
 int qsv_frame_alloc ;
 int qsv_frame_free ;
 int qsv_frame_get_hdl ;
 int qsv_frame_lock ;
 int qsv_frame_unlock ;

int ff_qsv_init_session_frames(AVCodecContext *avctx, mfxSession *psession,
                               QSVFramesContext *qsv_frames_ctx,
                               const char *load_plugins, int opaque, int gpu_copy)
{
    mfxFrameAllocator frame_allocator = {
        .pthis = qsv_frames_ctx,
        .Alloc = qsv_frame_alloc,
        .Lock = qsv_frame_lock,
        .Unlock = qsv_frame_unlock,
        .GetHDL = qsv_frame_get_hdl,
        .Free = qsv_frame_free,
    };

    AVHWFramesContext *frames_ctx = (AVHWFramesContext*)qsv_frames_ctx->hw_frames_ctx->data;
    AVQSVFramesContext *frames_hwctx = frames_ctx->hwctx;

    mfxSession session;
    mfxStatus err;

    int ret;

    ret = ff_qsv_init_session_device(avctx, &session,
                                     frames_ctx->device_ref, load_plugins, gpu_copy);
    if (ret < 0)
        return ret;

    if (!opaque) {
        qsv_frames_ctx->logctx = avctx;


        av_buffer_unref(&qsv_frames_ctx->mids_buf);
        qsv_frames_ctx->mids_buf = qsv_create_mids(qsv_frames_ctx->hw_frames_ctx);
        if (!qsv_frames_ctx->mids_buf)
            return AVERROR(ENOMEM);
        qsv_frames_ctx->mids = (QSVMid*)qsv_frames_ctx->mids_buf->data;
        qsv_frames_ctx->nb_mids = frames_hwctx->nb_surfaces;

        err = MFXVideoCORE_SetFrameAllocator(session, &frame_allocator);
        if (err != MFX_ERR_NONE)
            return ff_qsv_print_error(avctx, err,
                                      "Error setting a frame allocator");
    }

    *psession = session;
    return 0;
}
