
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sync ;
typedef int out_frame ;
struct TYPE_9__ {int frame; struct TYPE_9__* next; } ;
typedef TYPE_2__ mfxSyncPoint ;
struct TYPE_8__ {int mids_buf; int hw_frames_ctx; } ;
struct TYPE_10__ {int pool; TYPE_1__ frames_ctx; int internal_qs; int * async_fifo; TYPE_2__* work_frames; scalar_t__ session; } ;
typedef TYPE_2__ QSVFrame ;
typedef TYPE_4__ QSVContext ;


 int MFXVideoDECODE_Close (scalar_t__) ;
 int av_buffer_pool_uninit (int *) ;
 int av_buffer_unref (int *) ;
 int av_fifo_free (int *) ;
 int av_fifo_generic_read (int *,TYPE_2__**,int,int *) ;
 scalar_t__ av_fifo_size (int *) ;
 int av_frame_free (int *) ;
 int av_freep (TYPE_2__**) ;
 int ff_qsv_close_internal_session (int *) ;

int ff_qsv_decode_close(QSVContext *q)
{
    QSVFrame *cur = q->work_frames;

    if (q->session)
        MFXVideoDECODE_Close(q->session);

    while (q->async_fifo && av_fifo_size(q->async_fifo)) {
        QSVFrame *out_frame;
        mfxSyncPoint *sync;

        av_fifo_generic_read(q->async_fifo, &out_frame, sizeof(out_frame), ((void*)0));
        av_fifo_generic_read(q->async_fifo, &sync, sizeof(sync), ((void*)0));

        av_freep(&sync);
    }

    while (cur) {
        q->work_frames = cur->next;
        av_frame_free(&cur->frame);
        av_freep(&cur);
        cur = q->work_frames;
    }

    av_fifo_free(q->async_fifo);
    q->async_fifo = ((void*)0);

    ff_qsv_close_internal_session(&q->internal_qs);

    av_buffer_unref(&q->frames_ctx.hw_frames_ctx);
    av_buffer_unref(&q->frames_ctx.mids_buf);
    av_buffer_pool_uninit(&q->pool);

    return 0;
}
