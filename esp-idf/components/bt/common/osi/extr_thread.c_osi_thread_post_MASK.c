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
struct TYPE_6__ {void* context; int /*<<< orphan*/ * func; } ;
typedef  TYPE_1__ work_item_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int work_queue_num; int /*<<< orphan*/  work_sem; int /*<<< orphan*/ * work_queues; } ;
typedef  TYPE_2__ osi_thread_t ;
typedef  int /*<<< orphan*/ * osi_thread_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

bool FUNC5(osi_thread_t *thread, osi_thread_func_t func, void *context, int queue_idx, uint32_t timeout)
{
    FUNC0(thread != NULL);
    FUNC0(func != NULL);

    if (queue_idx >= thread->work_queue_num) {
        return false;
    }

    work_item_t *item = (work_item_t *)FUNC3(sizeof(work_item_t));
    if (item == NULL) {
        return false;
    }
    item->func = func;
    item->context = context;

    if (FUNC1(thread->work_queues[queue_idx], item, timeout) == false) {
        FUNC2(item);
        return false;
    }

    FUNC4(&thread->work_sem);

    return true;
}