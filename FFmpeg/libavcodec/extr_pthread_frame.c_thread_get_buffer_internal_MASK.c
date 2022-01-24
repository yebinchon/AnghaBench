#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  atomic_int ;
struct TYPE_19__ {TYPE_12__* progress; int /*<<< orphan*/  f; TYPE_6__** owner; } ;
typedef  TYPE_4__ ThreadFrame ;
struct TYPE_21__ {int active_thread_type; TYPE_2__* codec; TYPE_1__* internal; } ;
struct TYPE_20__ {int requested_flags; int result; TYPE_3__* parent; int /*<<< orphan*/  progress_mutex; int /*<<< orphan*/  progress_cond; int /*<<< orphan*/  state; int /*<<< orphan*/  requested_frame; } ;
struct TYPE_18__ {int /*<<< orphan*/  buffer_mutex; } ;
struct TYPE_17__ {scalar_t__ update_thread_context; } ;
struct TYPE_16__ {scalar_t__ allocate_progress; TYPE_5__* thread_ctx; } ;
struct TYPE_15__ {scalar_t__ data; } ;
typedef  TYPE_5__ PerThreadContext ;
typedef  TYPE_6__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FF_THREAD_FRAME ; 
 int /*<<< orphan*/  STATE_GET_BUFFER ; 
 scalar_t__ STATE_SETTING_UP ; 
 scalar_t__ FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_12__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_12__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  memory_order_release ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(AVCodecContext *avctx, ThreadFrame *f, int flags)
{
    PerThreadContext *p = avctx->internal->thread_ctx;
    int err;

    f->owner[0] = f->owner[1] = avctx;

    if (!(avctx->active_thread_type & FF_THREAD_FRAME))
        return FUNC8(avctx, f->f, flags);

    if (FUNC3(&p->state) != STATE_SETTING_UP &&
        (avctx->codec->update_thread_context || !FUNC1(avctx))) {
        FUNC7(avctx, AV_LOG_ERROR, "get_buffer() cannot be called after ff_thread_finish_setup()\n");
        return -1;
    }

    if (avctx->internal->allocate_progress) {
        atomic_int *progress;
        f->progress = FUNC5(2 * sizeof(*progress));
        if (!f->progress) {
            return FUNC0(ENOMEM);
        }
        progress = (atomic_int*)f->progress->data;

        FUNC2(&progress[0], -1);
        FUNC2(&progress[1], -1);
    }

    FUNC12(&p->parent->buffer_mutex);
    if (FUNC1(avctx)) {
        err = FUNC8(avctx, f->f, flags);
    } else {
        FUNC12(&p->progress_mutex);
        p->requested_frame = f->f;
        p->requested_flags = flags;
        FUNC4(&p->state, STATE_GET_BUFFER, memory_order_release);
        FUNC10(&p->progress_cond);

        while (FUNC3(&p->state) != STATE_SETTING_UP)
            FUNC11(&p->progress_cond, &p->progress_mutex);

        err = p->result;

        FUNC13(&p->progress_mutex);

    }
    if (!FUNC1(avctx) && !avctx->codec->update_thread_context)
        FUNC9(avctx);
    if (err)
        FUNC6(&f->progress);

    FUNC13(&p->parent->buffer_mutex);

    return err;
}