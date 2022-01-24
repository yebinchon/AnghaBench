#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int async_error; scalar_t__ frame_ct_in; scalar_t__ frame_ct_out; int /*<<< orphan*/  lock; int /*<<< orphan*/ * q_tail; TYPE_2__* q_head; int /*<<< orphan*/  cv_sample_sent; scalar_t__ flushing; } ;
typedef  TYPE_1__ VTEncContext ;
struct TYPE_8__ {struct TYPE_8__* sei; struct TYPE_8__* data; int /*<<< orphan*/ * cm_buffer; struct TYPE_8__* next; } ;
typedef  TYPE_2__ ExtraSEI ;
typedef  int /*<<< orphan*/ * CMSampleBufferRef ;
typedef  TYPE_2__ BufNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(VTEncContext *vtctx, bool wait, CMSampleBufferRef *buf, ExtraSEI **sei)
{
    BufNode *info;

    FUNC2(&vtctx->lock);

    if (vtctx->async_error) {
        FUNC3(&vtctx->lock);
        return vtctx->async_error;
    }

    if (vtctx->flushing && vtctx->frame_ct_in == vtctx->frame_ct_out) {
        *buf = NULL;

        FUNC3(&vtctx->lock);
        return 0;
    }

    while (!vtctx->q_head && !vtctx->async_error && wait) {
        FUNC1(&vtctx->cv_sample_sent, &vtctx->lock);
    }

    if (!vtctx->q_head) {
        FUNC3(&vtctx->lock);
        *buf = NULL;
        return 0;
    }

    info = vtctx->q_head;
    vtctx->q_head = vtctx->q_head->next;
    if (!vtctx->q_head) {
        vtctx->q_tail = NULL;
    }

    FUNC3(&vtctx->lock);

    *buf = info->cm_buffer;
    if (sei && *buf) {
        *sei = info->sei;
    } else if (info->sei) {
        if (info->sei->data) FUNC0(info->sei->data);
        FUNC0(info->sei);
    }
    FUNC0(info);

    vtctx->frame_ct_out++;

    return 0;
}