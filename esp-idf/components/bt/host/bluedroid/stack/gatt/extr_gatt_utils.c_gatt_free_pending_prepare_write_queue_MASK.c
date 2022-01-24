#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  error_code_app; scalar_t__ total_num; int /*<<< orphan*/ * queue; } ;
struct TYPE_5__ {TYPE_1__ prepare_write_record; } ;
typedef  TYPE_2__ tGATT_TCB ;

/* Variables and functions */
 int /*<<< orphan*/  FIXED_QUEUE_MAX_TIMEOUT ; 
 int /*<<< orphan*/  GATT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(tGATT_TCB *p_tcb)
{
    FUNC0("gatt_free_pending_prepare_write_queue");

    if (p_tcb->prepare_write_record.queue) {
        /* release all queued prepare write packets */
        while (!FUNC3(p_tcb->prepare_write_record.queue)) {
            FUNC4(FUNC1(p_tcb->prepare_write_record.queue, FIXED_QUEUE_MAX_TIMEOUT));
        }
        FUNC2(p_tcb->prepare_write_record.queue, NULL);
        p_tcb->prepare_write_record.queue = NULL;
    }

    p_tcb->prepare_write_record.total_num = 0;
    p_tcb->prepare_write_record.error_code_app = GATT_SUCCESS;
}