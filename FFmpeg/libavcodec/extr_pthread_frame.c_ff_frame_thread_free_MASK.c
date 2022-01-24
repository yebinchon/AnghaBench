#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ priv_class; int /*<<< orphan*/  (* close ) (TYPE_2__*) ;} ;
struct TYPE_16__ {TYPE_5__* codec; scalar_t__ priv_data; TYPE_1__* internal; } ;
struct TYPE_15__ {int is_copy; int die; int /*<<< orphan*/  async_cond; int /*<<< orphan*/  async_mutex; int /*<<< orphan*/  hwaccel_mutex; int /*<<< orphan*/  buffer_mutex; struct TYPE_15__* threads; struct TYPE_15__* avctx; int /*<<< orphan*/  hw_frames_ctx; struct TYPE_15__* internal; struct TYPE_15__* slice_offset; struct TYPE_15__* priv_data; struct TYPE_15__* released_buffers; int /*<<< orphan*/  avpkt; int /*<<< orphan*/  output_cond; int /*<<< orphan*/  progress_cond; int /*<<< orphan*/  input_cond; int /*<<< orphan*/  progress_mutex; int /*<<< orphan*/  mutex; int /*<<< orphan*/  frame; scalar_t__ thread_init; int /*<<< orphan*/  thread; struct TYPE_15__* prev_thread; } ;
struct TYPE_14__ {TYPE_2__* thread_ctx; } ;
typedef  TYPE_2__ PerThreadContext ;
typedef  TYPE_2__ FrameThreadContext ;
typedef  TYPE_4__ AVCodecContext ;
typedef  TYPE_5__ AVCodec ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 scalar_t__ FUNC15 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC16(AVCodecContext *avctx, int thread_count)
{
    FrameThreadContext *fctx = avctx->internal->thread_ctx;
    const AVCodec *codec = avctx->codec;
    int i;

    FUNC6(fctx, thread_count);

    if (fctx->prev_thread && fctx->prev_thread != fctx->threads)
        if (FUNC15(fctx->threads->avctx, fctx->prev_thread->avctx, 0) < 0) {
            FUNC3(avctx, AV_LOG_ERROR, "Final thread update failed\n");
            fctx->prev_thread->avctx->internal->is_copy = fctx->threads->avctx->internal->is_copy;
            fctx->threads->avctx->internal->is_copy = 1;
        }

    for (i = 0; i < thread_count; i++) {
        PerThreadContext *p = &fctx->threads[i];

        FUNC11(&p->mutex);
        p->die = 1;
        FUNC8(&p->input_cond);
        FUNC12(&p->mutex);

        if (p->thread_init)
            FUNC9(p->thread, NULL);
        p->thread_init=0;

        if (codec->close && p->avctx)
            codec->close(p->avctx);

        FUNC13(p);
        FUNC1(&p->frame);
    }

    for (i = 0; i < thread_count; i++) {
        PerThreadContext *p = &fctx->threads[i];

        FUNC10(&p->mutex);
        FUNC10(&p->progress_mutex);
        FUNC7(&p->input_cond);
        FUNC7(&p->progress_cond);
        FUNC7(&p->output_cond);
        FUNC5(&p->avpkt);
        FUNC2(&p->released_buffers);

        if (i && p->avctx) {
            FUNC2(&p->avctx->priv_data);
            FUNC2(&p->avctx->slice_offset);
        }

        if (p->avctx) {
            FUNC2(&p->avctx->internal);
            FUNC0(&p->avctx->hw_frames_ctx);
        }

        FUNC2(&p->avctx);
    }

    FUNC2(&fctx->threads);
    FUNC10(&fctx->buffer_mutex);
    FUNC10(&fctx->hwaccel_mutex);
    FUNC10(&fctx->async_mutex);
    FUNC7(&fctx->async_cond);

    FUNC2(&avctx->internal->thread_ctx);

    if (avctx->priv_data && avctx->codec && avctx->codec->priv_class)
        FUNC4(avctx->priv_data);
    avctx->codec = NULL;
}