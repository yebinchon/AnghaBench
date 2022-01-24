#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_1__* timer_call_t ;
typedef  int /*<<< orphan*/  timer_call_param_t ;
typedef  int /*<<< orphan*/  mpqueue_head_t ;
typedef  TYPE_2__* call_entry_t ;
struct TYPE_13__ {int /*<<< orphan*/  param1; TYPE_1__* queue; } ;
struct TYPE_12__ {int /*<<< orphan*/  lock; void* ttd; int /*<<< orphan*/  flags; void* soft_deadline; scalar_t__ async_dequeue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ *) ; 
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
 int /*<<< orphan*/  timer_call_enqueue_deadline_unlocked_async1 ; 
 int /*<<< orphan*/  timer_call_enqueue_deadline_unlocked_async2 ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/ * timer_longterm_queue ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__inline__ mpqueue_head_t *
FUNC12(
	timer_call_t 			call,
	mpqueue_head_t			*queue,
	uint64_t			deadline,
	uint64_t			soft_deadline,
	uint64_t			ttd,
	timer_call_param_t		param1,
	uint32_t			callout_flags)
{
	call_entry_t	entry = FUNC2(call);
	mpqueue_head_t	*old_queue;

	FUNC0("timer_call_enqueue_deadline_unlocked(%p,%p,)\n", call, queue);

	FUNC5(&call->lock);

	old_queue = FUNC1(entry->queue);

	if (old_queue != NULL) {
		FUNC10(old_queue);
		if (call->async_dequeue) {
			/* collision (1c): timer already dequeued, clear flag */
#if TIMER_ASSERT
			TIMER_KDEBUG_TRACE(KDEBUG_TRACE, 
				DECR_TIMER_ASYNC_DEQ | DBG_FUNC_NONE,
				VM_KERNEL_UNSLIDE_OR_PERM(call),
				call->async_dequeue,
				VM_KERNEL_UNSLIDE_OR_PERM(TCE(call)->queue),
				0x1c, 0);
			timer_call_enqueue_deadline_unlocked_async1++;
#endif
			call->async_dequeue = FALSE;
			entry->queue = NULL;
		} else if (old_queue != queue) {
			FUNC7(call);
#if TIMER_ASSERT
			timer_call_enqueue_deadline_unlocked_async2++;
#endif
		}
		if (old_queue == timer_longterm_queue)
			FUNC9(call);
		if (old_queue != queue) {
			FUNC11(old_queue);
			FUNC10(queue);
		}
	} else {
		FUNC10(queue);
	}

	call->soft_deadline = soft_deadline;
	call->flags = callout_flags;
	FUNC2(call)->param1 = param1;
	call->ttd = ttd;

	FUNC8(call, queue, deadline);
	FUNC11(queue);
	FUNC6(&call->lock);

	return (old_queue);
}