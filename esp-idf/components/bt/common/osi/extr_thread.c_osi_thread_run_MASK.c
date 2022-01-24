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
struct TYPE_5__ {int /*<<< orphan*/  context; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ work_item_t ;
struct osi_thread_start_arg {int /*<<< orphan*/  start_sem; TYPE_2__* thread; } ;
struct TYPE_6__ {int work_queue_num; int /*<<< orphan*/  stop_sem; int /*<<< orphan*/ * thread_handle; int /*<<< orphan*/ * work_queues; scalar_t__ stop; int /*<<< orphan*/  work_sem; } ;
typedef  TYPE_2__ osi_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  OSI_SEM_MAX_TIMEOUT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *arg)
{
    struct osi_thread_start_arg *start = (struct osi_thread_start_arg *)arg;
    osi_thread_t *thread = start->thread;

    FUNC2(&start->start_sem);

    while (1) {
        int idx = 0;

        FUNC3(&thread->work_sem, OSI_SEM_MAX_TIMEOUT);

        if (thread->stop) {
            break;
        }

        while (!thread->stop && idx < thread->work_queue_num) {
            work_item_t *item = FUNC0(thread->work_queues[idx], 0);
            if (item) {
                item->func(item->context);
                FUNC1(item);
                idx = 0;
                continue;
            } else {
                idx++;
            }
        }
    }

    thread->thread_handle = NULL;
    FUNC2(&thread->stop_sem);

    FUNC5(NULL);
}