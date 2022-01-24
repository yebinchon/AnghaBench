#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ thread_t ;
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_3__ {int /*<<< orphan*/  xstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVX512 ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 

boolean_t
FUNC4(thread_t thread)
{
	task_t		task = FUNC0();

	if (thread != FUNC1())
		return FALSE;
	if (!FUNC3())
		return FALSE;

	FUNC2(thread);

	/* Racy but the task's xstate is only a hint */
	task->xstate = AVX512;

	return TRUE;
}