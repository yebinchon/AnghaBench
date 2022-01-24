#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  TYPE_1__* timer_call_t ;
struct TYPE_12__ {int /*<<< orphan*/  count; int /*<<< orphan*/  earliest_soft_deadline; int /*<<< orphan*/  head; } ;
typedef  TYPE_2__ mpqueue_head_t ;
struct TYPE_13__ {int /*<<< orphan*/  deadline; int /*<<< orphan*/  queue; } ;
struct TYPE_11__ {int flags; int /*<<< orphan*/  soft_deadline; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_6__* FUNC2 (TYPE_1__*) ; 
 int TIMER_CALL_RATELIMITED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline__ mpqueue_head_t *
FUNC5(
	timer_call_t			entry,
	mpqueue_head_t			*queue,
	uint64_t			deadline)
{
	mpqueue_head_t	*old_queue = FUNC0(FUNC2(entry)->queue);

	FUNC3(FUNC2(entry), FUNC1(queue), deadline);

	/* For efficiency, track the earliest soft deadline on the queue,
	 * so that fuzzy decisions can be made without lock acquisitions.
	 */

	timer_call_t thead = (timer_call_t)FUNC4(&queue->head);
	queue->earliest_soft_deadline = thead->flags & TIMER_CALL_RATELIMITED ? FUNC2(thead)->deadline : thead->soft_deadline;

	if (old_queue)
		old_queue->count--;
	queue->count++;

	return old_queue;
}