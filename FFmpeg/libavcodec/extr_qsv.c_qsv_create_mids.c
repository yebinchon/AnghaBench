
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_21__ {scalar_t__ data; } ;
struct TYPE_20__ {TYPE_4__* hwctx; } ;
struct TYPE_19__ {int nb_surfaces; TYPE_2__* surfaces; } ;
struct TYPE_18__ {TYPE_6__* hw_frames_ref; int handle; } ;
struct TYPE_16__ {int MemId; } ;
struct TYPE_17__ {TYPE_1__ Data; } ;
typedef TYPE_3__ QSVMid ;
typedef TYPE_4__ AVQSVFramesContext ;
typedef TYPE_5__ AVHWFramesContext ;
typedef TYPE_6__ AVBufferRef ;


 TYPE_6__* av_buffer_create (int *,int,int ,TYPE_6__*,int ) ;
 TYPE_6__* av_buffer_ref (TYPE_6__*) ;
 int av_buffer_unref (TYPE_6__**) ;
 int av_freep (TYPE_3__**) ;
 TYPE_3__* av_mallocz_array (int,int) ;
 int mids_buf_free ;

__attribute__((used)) static AVBufferRef *qsv_create_mids(AVBufferRef *hw_frames_ref)
{
    AVHWFramesContext *frames_ctx = (AVHWFramesContext*)hw_frames_ref->data;
    AVQSVFramesContext *frames_hwctx = frames_ctx->hwctx;
    int nb_surfaces = frames_hwctx->nb_surfaces;

    AVBufferRef *mids_buf, *hw_frames_ref1;
    QSVMid *mids;
    int i;

    hw_frames_ref1 = av_buffer_ref(hw_frames_ref);
    if (!hw_frames_ref1)
        return ((void*)0);

    mids = av_mallocz_array(nb_surfaces, sizeof(*mids));
    if (!mids) {
        av_buffer_unref(&hw_frames_ref1);
        return ((void*)0);
    }

    mids_buf = av_buffer_create((uint8_t*)mids, nb_surfaces * sizeof(*mids),
                                mids_buf_free, hw_frames_ref1, 0);
    if (!mids_buf) {
        av_buffer_unref(&hw_frames_ref1);
        av_freep(&mids);
        return ((void*)0);
    }

    for (i = 0; i < nb_surfaces; i++) {
        QSVMid *mid = &mids[i];
        mid->handle = frames_hwctx->surfaces[i].Data.MemId;
        mid->hw_frames_ref = hw_frames_ref1;
    }

    return mids_buf;
}
