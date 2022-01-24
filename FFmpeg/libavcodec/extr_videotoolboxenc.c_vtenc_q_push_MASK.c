#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_2__* q_tail; TYPE_2__* q_head; int /*<<< orphan*/  cv_sample_sent; } ;
typedef  TYPE_1__ VTEncContext ;
struct TYPE_7__ {struct TYPE_7__* next; int /*<<< orphan*/ * sei; int /*<<< orphan*/  cm_buffer; } ;
typedef  int /*<<< orphan*/  ExtraSEI ;
typedef  int /*<<< orphan*/  CMSampleBufferRef ;
typedef  TYPE_2__ BufNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(VTEncContext *vtctx, CMSampleBufferRef buffer, ExtraSEI *sei)
{
    BufNode *info = FUNC2(sizeof(BufNode));
    if (!info) {
        FUNC6(vtctx, FUNC0(ENOMEM));
        return;
    }

    FUNC1(buffer);
    info->cm_buffer = buffer;
    info->sei = sei;
    info->next = NULL;

    FUNC4(&vtctx->lock);
    FUNC3(&vtctx->cv_sample_sent);

    if (!vtctx->q_head) {
        vtctx->q_head = info;
    } else {
        vtctx->q_tail->next = info;
    }

    vtctx->q_tail = info;

    FUNC5(&vtctx->lock);
}