#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int async_error; int /*<<< orphan*/  lock; int /*<<< orphan*/ * q_tail; TYPE_2__* q_head; } ;
typedef  TYPE_1__ VTEncContext ;
struct TYPE_6__ {int /*<<< orphan*/  cm_buffer; struct TYPE_6__* next; } ;
typedef  TYPE_2__ BufNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(VTEncContext *vtctx, int err)
{
    BufNode *info;

    FUNC2(&vtctx->lock);

    vtctx->async_error = err;

    info = vtctx->q_head;
    vtctx->q_head = vtctx->q_tail = NULL;

    while (info) {
        BufNode *next = info->next;
        FUNC0(info->cm_buffer);
        FUNC1(info);
        info = next;
    }

    FUNC3(&vtctx->lock);
}