#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sync ;
typedef  int /*<<< orphan*/  pkt ;
struct TYPE_13__ {int /*<<< orphan*/  Payload; } ;
struct TYPE_14__ {TYPE_2__ enc_ctrl; int /*<<< orphan*/  frame; struct TYPE_14__* next; } ;
typedef  TYPE_3__ mfxSyncPoint ;
typedef  TYPE_3__ mfxBitstream ;
typedef  int /*<<< orphan*/  bs ;
struct TYPE_12__ {int /*<<< orphan*/  mids_buf; int /*<<< orphan*/  hw_frames_ctx; } ;
struct TYPE_15__ {TYPE_3__* extparam; int /*<<< orphan*/  opaque_alloc_buf; TYPE_3__* opaque_surfaces; int /*<<< orphan*/ * async_fifo; TYPE_3__* work_frames; TYPE_1__ frames_ctx; int /*<<< orphan*/  internal_qs; int /*<<< orphan*/ * session; } ;
typedef  TYPE_3__ QSVFrame ;
typedef  TYPE_6__ QSVEncContext ;
typedef  TYPE_3__* AVPacket ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__**,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(AVCodecContext *avctx, QSVEncContext *q)
{
    QSVFrame *cur;

    if (q->session)
        FUNC0(q->session);

    q->session          = NULL;
    FUNC9(&q->internal_qs);

    FUNC1(&q->frames_ctx.hw_frames_ctx);
    FUNC1(&q->frames_ctx.mids_buf);

    cur = q->work_frames;
    while (cur) {
        q->work_frames = cur->next;
        FUNC5(&cur->frame);
        FUNC6(cur->enc_ctrl.Payload);
        FUNC7(&cur);
        cur = q->work_frames;
    }

    while (q->async_fifo && FUNC4(q->async_fifo)) {
        AVPacket pkt;
        mfxSyncPoint *sync;
        mfxBitstream *bs;

        FUNC3(q->async_fifo, &pkt,  sizeof(pkt),  NULL);
        FUNC3(q->async_fifo, &sync, sizeof(sync), NULL);
        FUNC3(q->async_fifo, &bs,   sizeof(bs),   NULL);

        FUNC7(&sync);
        FUNC7(&bs);
        FUNC8(&pkt);
    }
    FUNC2(q->async_fifo);
    q->async_fifo = NULL;

    FUNC7(&q->opaque_surfaces);
    FUNC1(&q->opaque_alloc_buf);

    FUNC7(&q->extparam);

    return 0;
}