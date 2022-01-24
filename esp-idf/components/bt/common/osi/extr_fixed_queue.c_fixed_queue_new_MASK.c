#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t capacity; int /*<<< orphan*/  dequeue_sem; int /*<<< orphan*/  enqueue_sem; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ fixed_queue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t,size_t) ; 

fixed_queue_t *FUNC5(size_t capacity)
{
    fixed_queue_t *ret = FUNC2(sizeof(fixed_queue_t));
    if (!ret) {
        goto error;
    }

    FUNC3(&ret->lock);
    ret->capacity = capacity;

    ret->list = FUNC1(NULL);
    if (!ret->list) {
        goto error;
    }


    FUNC4(&ret->enqueue_sem, capacity, capacity);
    if (!ret->enqueue_sem) {
        goto error;
    }

    FUNC4(&ret->dequeue_sem, capacity, 0);
    if (!ret->dequeue_sem) {
        goto error;
    }

    return ret;

error:;
    FUNC0(ret, NULL);
    return NULL;
}