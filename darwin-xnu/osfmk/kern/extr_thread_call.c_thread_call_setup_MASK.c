#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_call_t ;
typedef  int /*<<< orphan*/  thread_call_param_t ;
typedef  int /*<<< orphan*/  thread_call_func_t ;
typedef  int /*<<< orphan*/  call_entry_t ;
struct TYPE_4__ {int /*<<< orphan*/  tc_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  THREAD_CALL_INDEX_HIGH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(
	thread_call_t			call,
	thread_call_func_t		func,
	thread_call_param_t		param0)
{
	FUNC0(call, sizeof(*call));
	FUNC1((call_entry_t)call, func, param0);

	/* Thread calls default to the HIGH group unless otherwise specified */
	call->tc_index = THREAD_CALL_INDEX_HIGH;

	/* THREAD_CALL_ALLOC not set, memory owned by caller */
}