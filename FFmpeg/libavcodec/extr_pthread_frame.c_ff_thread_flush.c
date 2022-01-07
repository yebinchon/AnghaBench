
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int thread_count; TYPE_2__* codec; TYPE_1__* internal; } ;
struct TYPE_12__ {int delaying; TYPE_3__* threads; TYPE_3__* prev_thread; scalar_t__ next_finished; scalar_t__ next_decoding; } ;
struct TYPE_11__ {int avctx; scalar_t__ result; int frame; scalar_t__ got_frame; } ;
struct TYPE_10__ {int (* flush ) (int ) ;} ;
struct TYPE_9__ {TYPE_4__* thread_ctx; } ;
typedef TYPE_3__ PerThreadContext ;
typedef TYPE_4__ FrameThreadContext ;
typedef TYPE_5__ AVCodecContext ;


 int av_frame_unref (int ) ;
 int park_frame_worker_threads (TYPE_4__*,int) ;
 int release_delayed_buffers (TYPE_3__*) ;
 int stub1 (int ) ;
 int update_context_from_thread (int ,int ,int ) ;

void ff_thread_flush(AVCodecContext *avctx)
{
    int i;
    FrameThreadContext *fctx = avctx->internal->thread_ctx;

    if (!fctx) return;

    park_frame_worker_threads(fctx, avctx->thread_count);
    if (fctx->prev_thread) {
        if (fctx->prev_thread != &fctx->threads[0])
            update_context_from_thread(fctx->threads[0].avctx, fctx->prev_thread->avctx, 0);
    }

    fctx->next_decoding = fctx->next_finished = 0;
    fctx->delaying = 1;
    fctx->prev_thread = ((void*)0);
    for (i = 0; i < avctx->thread_count; i++) {
        PerThreadContext *p = &fctx->threads[i];

        p->got_frame = 0;
        av_frame_unref(p->frame);
        p->result = 0;

        release_delayed_buffers(p);

        if (avctx->codec->flush)
            avctx->codec->flush(p->avctx);
    }
}
