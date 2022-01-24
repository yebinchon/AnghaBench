#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_result_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  kstackptr; } ;
struct TYPE_5__ {TYPE_1__ machine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 () ; 

void
FUNC3(
	thread_continue_t continuation,
	void *parameter,
	wait_result_t wresult,
	boolean_t enable_interrupts)
{
#define call_continuation_kprintf(x...)	/* kprintf("call_continuation_kprintf:" x) */

	call_continuation_kprintf("thread = %p continuation = %p, stack = %p\n", current_thread(), continuation, current_thread()->machine.kstackptr);
	FUNC0(continuation, parameter, wresult, enable_interrupts);
}