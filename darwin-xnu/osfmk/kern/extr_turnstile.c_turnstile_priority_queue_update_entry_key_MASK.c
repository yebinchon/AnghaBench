#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct priority_queue {int dummy; } ;
typedef  scalar_t__ priority_queue_key_t ;
typedef  int /*<<< orphan*/  priority_queue_entry_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE ; 
 scalar_t__ FUNC0 (struct priority_queue*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct priority_queue*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct priority_queue*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct priority_queue*) ; 

__attribute__((used)) static boolean_t
FUNC4(struct priority_queue *q,
		priority_queue_entry_t elt, priority_queue_key_t pri)
{
	priority_queue_key_t old_key = FUNC3(q);

	if (FUNC2(q, elt) < pri) {
		if (FUNC1(q, elt, pri,
				PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE)) {
			return old_key != FUNC3(q);
		}
	} else if (FUNC2(q, elt) > pri) {
		if (FUNC0(q, elt, pri,
				PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE)) {
			return old_key != FUNC3(q);
		}
	}

	return FALSE;
}