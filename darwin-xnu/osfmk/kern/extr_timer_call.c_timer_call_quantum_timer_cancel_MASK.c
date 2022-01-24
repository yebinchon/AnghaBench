#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* timer_call_t ;
typedef  int boolean_t ;
struct TYPE_7__ {int /*<<< orphan*/  param0; int /*<<< orphan*/  func; scalar_t__ entry_time; scalar_t__ deadline; } ;
struct TYPE_6__ {int ttd; scalar_t__ flags; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int DECR_TIMER_CANCEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,unsigned int) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 TYPE_4__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  callout__cancel ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer_call_func_t ; 
 int /*<<< orphan*/  timer_call_param_t ; 
 int /*<<< orphan*/  uint32_t ; 

boolean_t
FUNC8(
	timer_call_t            call)
{
	FUNC4(FUNC6() == FALSE);

	FUNC2(KDEBUG_TRACE,
        	DECR_TIMER_CANCEL | DBG_FUNC_START,
		FUNC3(call), FUNC1(call)->deadline, 
		0, call->flags, 0);
	
	FUNC1(call)->deadline = 0;
	FUNC7(0);

	FUNC2(KDEBUG_TRACE,
        	DECR_TIMER_CANCEL | DBG_FUNC_END,
		FUNC3(call), 0,
		FUNC1(call)->deadline - FUNC5(),
		FUNC1(call)->deadline - FUNC1(call)->entry_time, 0);
	
#if CONFIG_DTRACE
	DTRACE_TMR6(callout__cancel, timer_call_func_t, TCE(call)->func,
	    timer_call_param_t, TCE(call)->param0, uint32_t, call->flags, 0,
	    (call->ttd >> 32), (unsigned) (call->ttd & 0xFFFFFFFF));
#endif

	return true;
}