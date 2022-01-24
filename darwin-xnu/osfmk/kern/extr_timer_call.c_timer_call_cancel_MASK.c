#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  TYPE_1__* timer_call_t ;
typedef  int /*<<< orphan*/  spl_t ;
struct TYPE_15__ {int soft_deadline; int flags; int earliest_soft_deadline; int ttd; int /*<<< orphan*/  head; } ;
typedef  TYPE_1__ mpqueue_head_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_14__ {int deadline; } ;
struct TYPE_13__ {int deadline; int entry_time; int /*<<< orphan*/  param0; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 TYPE_12__* FUNC0 (int /*<<< orphan*/ ) ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int DECR_TIMER_CANCEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 TYPE_10__* FUNC2 (TYPE_1__*) ; 
 int TIMER_CALL_RATELIMITED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int UINT64_MAX ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  callout__cancel ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  timer_call_func_t ; 
 int /*<<< orphan*/  timer_call_param_t ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  uint32_t ; 

boolean_t
FUNC14(
	timer_call_t		call)
{
	mpqueue_head_t		*old_queue;
	spl_t			s;

	s = FUNC8();

	FUNC3(KDEBUG_TRACE,
        	DECR_TIMER_CANCEL | DBG_FUNC_START,
		FUNC4(call),
		FUNC2(call)->deadline, call->soft_deadline, call->flags, 0);

	old_queue = FUNC10(call);

	if (old_queue != NULL) {
		FUNC12(old_queue);
		if (!FUNC6(&old_queue->head)) {
			FUNC11(old_queue, FUNC2(call)->deadline, FUNC0(FUNC7(&old_queue->head))->deadline);
 			timer_call_t thead = (timer_call_t)FUNC7(&old_queue->head);
 			old_queue->earliest_soft_deadline = thead->flags & TIMER_CALL_RATELIMITED ? FUNC2(thead)->deadline : thead->soft_deadline;
		}
		else {
			FUNC11(old_queue, FUNC2(call)->deadline, UINT64_MAX);
			old_queue->earliest_soft_deadline = UINT64_MAX;
		}
		FUNC13(old_queue);
	}
	FUNC3(KDEBUG_TRACE,
        	DECR_TIMER_CANCEL | DBG_FUNC_END,
		FUNC4(call),
		FUNC4(old_queue),
		FUNC2(call)->deadline - FUNC5(),
		FUNC2(call)->deadline - FUNC2(call)->entry_time, 0);
	FUNC9(s);

#if CONFIG_DTRACE
	DTRACE_TMR6(callout__cancel, timer_call_func_t, TCE(call)->func,
	    timer_call_param_t, TCE(call)->param0, uint32_t, call->flags, 0,
	    (call->ttd >> 32), (unsigned) (call->ttd & 0xFFFFFFFF));
#endif

	return (old_queue != NULL);
}