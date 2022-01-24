#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  enqueue_sem; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; int /*<<< orphan*/  dequeue_sem; } ;
typedef  TYPE_1__ fixed_queue_t ;

/* Variables and functions */
 int /*<<< orphan*/  OSI_MUTEX_MAX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *FUNC7(fixed_queue_t *queue, uint32_t timeout)
{
    void *ret = NULL;

    FUNC0(queue != NULL);

    if (FUNC6(queue->dequeue_sem, timeout) != 0) {
        return NULL;
    }

    FUNC3(&queue->lock, OSI_MUTEX_MAX_TIMEOUT);
    ret = FUNC1(queue->list);
    FUNC2(queue->list, ret);
    FUNC4(&queue->lock);

    FUNC5(&queue->enqueue_sem);

    return ret;
}