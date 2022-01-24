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
typedef  int /*<<< orphan*/  list_node_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dequeue_sem; int /*<<< orphan*/  enqueue_sem; int /*<<< orphan*/  list; } ;
typedef  TYPE_1__ fixed_queue_t ;
typedef  int /*<<< orphan*/  (* fixed_queue_free_cb ) (int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(fixed_queue_t *queue, fixed_queue_free_cb free_cb)
{
    const list_node_t *node;

    if (queue == NULL) {
	    return;
	}

    FUNC0(queue);

    if (free_cb) {
        for (node = FUNC1(queue->list); node != FUNC2(queue->list); node = FUNC4(node)) {
            free_cb(FUNC5(node));
        }
    }

    FUNC3(queue->list);
    FUNC8(&queue->enqueue_sem);
    FUNC8(&queue->dequeue_sem);
    FUNC7(&queue->lock);
    FUNC6(queue);
}