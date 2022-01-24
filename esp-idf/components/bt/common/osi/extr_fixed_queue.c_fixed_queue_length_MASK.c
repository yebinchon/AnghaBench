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
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
typedef  TYPE_1__ fixed_queue_t ;

/* Variables and functions */
 int /*<<< orphan*/  OSI_MUTEX_MAX_TIMEOUT ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

size_t FUNC3(fixed_queue_t *queue)
{
    size_t length;

    if (queue == NULL) {
        return 0;
    }

    FUNC1(&queue->lock, OSI_MUTEX_MAX_TIMEOUT);
    length = FUNC0(queue->list);
    FUNC2(&queue->lock);

    return length;
}