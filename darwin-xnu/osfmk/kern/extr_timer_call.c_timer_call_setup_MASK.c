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
typedef  TYPE_1__* timer_call_t ;
typedef  int /*<<< orphan*/  timer_call_param_t ;
typedef  int /*<<< orphan*/  timer_call_func_t ;
struct TYPE_5__ {int /*<<< orphan*/  async_dequeue; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(
	timer_call_t			call,
	timer_call_func_t		func,
	timer_call_param_t		param0)
{
	FUNC0("timer_call_setup(%p,%p,%p)\n", call, func, param0);
	FUNC2(FUNC1(call), func, param0);
	FUNC3(&(call)->lock, 0);
	call->async_dequeue = FALSE;
}