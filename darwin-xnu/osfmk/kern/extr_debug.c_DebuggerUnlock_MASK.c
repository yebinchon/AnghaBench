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

/* Variables and functions */
 scalar_t__ DEBUGGER_NO_CPU ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ debugger_cpu ; 

__attribute__((used)) static void
FUNC3()
{
	FUNC1(debugger_cpu == FUNC2());

	/*
	 * We don't do an atomic exchange here in case
	 * there's another CPU spinning to acquire the debugger_lock
	 * and we never get a chance to update it. We already have the
	 * lock so we can simply store DEBUGGER_NO_CPU and follow with
	 * a barrier.
	 */
	debugger_cpu = DEBUGGER_NO_CPU;
	FUNC0();

	return;
}