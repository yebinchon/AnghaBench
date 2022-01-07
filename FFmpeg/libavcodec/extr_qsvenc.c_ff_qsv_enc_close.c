
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int sync ;
typedef int pkt ;
struct TYPE_13__ {int Payload; } ;
struct TYPE_14__ {TYPE_2__ enc_ctrl; int frame; struct TYPE_14__* next; } ;
typedef TYPE_3__ mfxSyncPoint ;
typedef TYPE_3__ mfxBitstream ;
typedef int bs ;
struct TYPE_12__ {int mids_buf; int hw_frames_ctx; } ;
struct TYPE_15__ {TYPE_3__* extparam; int opaque_alloc_buf; TYPE_3__* opaque_surfaces; int * async_fifo; TYPE_3__* work_frames; TYPE_1__ frames_ctx; int internal_qs; int * session; } ;
typedef TYPE_3__ QSVFrame ;
typedef TYPE_6__ QSVEncContext ;
typedef TYPE_3__* AVPacket ;
typedef int AVCodecContext ;


 int MFXVideoENCODE_Close (int *) ;
 int av_buffer_unref (int *) ;
 int av_fifo_free (int *) ;
 int av_fifo_generic_read (int *,TYPE_3__**,int,int *) ;
 scalar_t__ av_fifo_size (int *) ;
 int av_frame_free (int *) ;
 int av_free (int ) ;
 int av_freep (TYPE_3__**) ;
 int av_packet_unref (TYPE_3__**) ;
 int ff_qsv_close_internal_session (int *) ;

int ff_qsv_enc_close(AVCodecContext *avctx, QSVEncContext *q)
{
    QSVFrame *cur;

    if (q->session)
        MFXVideoENCODE_Close(q->session);

    q->session = ((void*)0);
    ff_qsv_close_internal_session(&q->internal_qs);

    av_buffer_unref(&q->frames_ctx.hw_frames_ctx);
    av_buffer_unref(&q->frames_ctx.mids_buf);

    cur = q->work_frames;
    while (cur) {
        q->work_frames = cur->next;
        av_frame_free(&cur->frame);
        av_free(cur->enc_ctrl.Payload);
        av_freep(&cur);
        cur = q->work_frames;
    }

    while (q->async_fifo && av_fifo_size(q->async_fifo)) {
        AVPacket pkt;
        mfxSyncPoint *sync;
        mfxBitstream *bs;

        av_fifo_generic_read(q->async_fifo, &pkt, sizeof(pkt), ((void*)0));
        av_fifo_generic_read(q->async_fifo, &sync, sizeof(sync), ((void*)0));
        av_fifo_generic_read(q->async_fifo, &bs, sizeof(bs), ((void*)0));

        av_freep(&sync);
        av_freep(&bs);
        av_packet_unref(&pkt);
    }
    av_fifo_free(q->async_fifo);
    q->async_fifo = ((void*)0);

    av_freep(&q->opaque_surfaces);
    av_buffer_unref(&q->opaque_alloc_buf);

    av_freep(&q->extparam);

    return 0;
}
