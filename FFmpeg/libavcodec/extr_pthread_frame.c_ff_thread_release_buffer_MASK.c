#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_10__* f; int /*<<< orphan*/ ** owner; int /*<<< orphan*/  progress; } ;
typedef  TYPE_2__ ThreadFrame ;
struct TYPE_18__ {int active_thread_type; int debug; TYPE_1__* internal; } ;
struct TYPE_17__ {int /*<<< orphan*/  buffer_mutex; } ;
struct TYPE_16__ {int num_released_buffers; int /*<<< orphan*/ * released_buffers; int /*<<< orphan*/  released_buffers_allocated; TYPE_4__* parent; } ;
struct TYPE_14__ {TYPE_3__* thread_ctx; } ;
struct TYPE_13__ {int /*<<< orphan*/ * buf; } ;
typedef  TYPE_3__ PerThreadContext ;
typedef  TYPE_4__ FrameThreadContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int FF_DEBUG_BUFFERS ; 
 int FF_THREAD_FRAME ; 
 int INT_MAX ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(AVCodecContext *avctx, ThreadFrame *f)
{
    PerThreadContext *p = avctx->internal->thread_ctx;
    FrameThreadContext *fctx;
    AVFrame *dst, *tmp;
    int can_direct_free = !(avctx->active_thread_type & FF_THREAD_FRAME) ||
                          FUNC0(avctx);

    if (!f->f || !f->f->buf[0])
        return;

    if (avctx->debug & FF_DEBUG_BUFFERS)
        FUNC5(avctx, AV_LOG_DEBUG, "thread_release_buffer called on pic %p\n", f);

    FUNC1(&f->progress);
    f->owner[0] = f->owner[1] = NULL;

    if (can_direct_free) {
        FUNC4(f->f);
        return;
    }

    fctx = p->parent;
    FUNC6(&fctx->buffer_mutex);

    if (p->num_released_buffers + 1 >= INT_MAX / sizeof(*p->released_buffers))
        goto fail;
    tmp = FUNC2(p->released_buffers, &p->released_buffers_allocated,
                          (p->num_released_buffers + 1) *
                          sizeof(*p->released_buffers));
    if (!tmp)
        goto fail;
    p->released_buffers = tmp;

    dst = &p->released_buffers[p->num_released_buffers];
    FUNC3(dst, f->f);

    p->num_released_buffers++;

fail:
    FUNC7(&fctx->buffer_mutex);
}