#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sync ;
typedef  int /*<<< orphan*/  out_frame ;
struct TYPE_9__ {int /*<<< orphan*/  frame; struct TYPE_9__* next; } ;
typedef  TYPE_2__ mfxSyncPoint ;
struct TYPE_8__ {int /*<<< orphan*/  mids_buf; int /*<<< orphan*/  hw_frames_ctx; } ;
struct TYPE_10__ {int /*<<< orphan*/  pool; TYPE_1__ frames_ctx; int /*<<< orphan*/  internal_qs; int /*<<< orphan*/ * async_fifo; TYPE_2__* work_frames; scalar_t__ session; } ;
typedef  TYPE_2__ QSVFrame ;
typedef  TYPE_4__ QSVContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__**,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(QSVContext *q)
{
    QSVFrame *cur = q->work_frames;

    if (q->session)
        FUNC0(q->session);

    while (q->async_fifo && FUNC5(q->async_fifo)) {
        QSVFrame *out_frame;
        mfxSyncPoint *sync;

        FUNC4(q->async_fifo, &out_frame, sizeof(out_frame), NULL);
        FUNC4(q->async_fifo, &sync,      sizeof(sync),      NULL);

        FUNC7(&sync);
    }

    while (cur) {
        q->work_frames = cur->next;
        FUNC6(&cur->frame);
        FUNC7(&cur);
        cur = q->work_frames;
    }

    FUNC3(q->async_fifo);
    q->async_fifo = NULL;

    FUNC8(&q->internal_qs);

    FUNC2(&q->frames_ctx.hw_frames_ctx);
    FUNC2(&q->frames_ctx.mids_buf);
    FUNC1(&q->pool);

    return 0;
}