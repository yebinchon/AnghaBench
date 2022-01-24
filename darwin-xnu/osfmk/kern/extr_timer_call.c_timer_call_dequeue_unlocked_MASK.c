#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* timer_call_t ;
typedef  int /*<<< orphan*/  mpqueue_head_t ;
typedef  TYPE_2__* call_entry_t ;
struct TYPE_12__ {TYPE_1__* queue; } ;
struct TYPE_11__ {int /*<<< orphan*/  lock; scalar_t__ async_dequeue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int DBG_FUNC_NONE ; 
 int DECR_TIMER_ASYNC_DEQ ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer_call_dequeue_unlocked_async1 ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/ * timer_longterm_queue ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

mpqueue_head_t *
FUNC11(
	timer_call_t 		call)
{
	call_entry_t	entry = FUNC2(call);
	mpqueue_head_t	*old_queue;

	FUNC0("timer_call_dequeue_unlocked(%p)\n", call);

	FUNC5(&call->lock);
	old_queue = FUNC1(entry->queue);
#if TIMER_ASSERT
	TIMER_KDEBUG_TRACE(KDEBUG_TRACE, 
		DECR_TIMER_ASYNC_DEQ | DBG_FUNC_NONE,
		VM_KERNEL_UNSLIDE_OR_PERM(call),
		call->async_dequeue,
		VM_KERNEL_UNSLIDE_OR_PERM(TCE(call)->queue),
		0, 0);
#endif
	if (old_queue != NULL) {
		FUNC9(old_queue);
		if (call->async_dequeue) {
			/* collision (1c): timer already dequeued, clear flag */
#if TIMER_ASSERT
			TIMER_KDEBUG_TRACE(KDEBUG_TRACE, 
				DECR_TIMER_ASYNC_DEQ | DBG_FUNC_NONE,
			    VM_KERNEL_UNSLIDE_OR_PERM(call),
				call->async_dequeue,
				VM_KERNEL_UNSLIDE_OR_PERM(TCE(call)->queue),
				0x1c, 0);
			timer_call_dequeue_unlocked_async1++;
#endif
			call->async_dequeue = FALSE;
			entry->queue = NULL;
		} else {
			FUNC7(call);
		}
		if (old_queue == timer_longterm_queue)
			FUNC8(call);
		FUNC10(old_queue);
	}
	FUNC6(&call->lock);
	return (old_queue);
}