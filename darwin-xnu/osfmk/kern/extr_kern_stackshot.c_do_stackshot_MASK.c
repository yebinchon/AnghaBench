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
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  kdp_snapshot ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stack_snapshot_bytes_traced ; 
 int /*<<< orphan*/  stack_snapshot_flags ; 
 int /*<<< orphan*/  stack_snapshot_pid ; 
 int /*<<< orphan*/  stack_snapshot_ret ; 

kern_return_t
FUNC1(void *context)
{
#pragma unused(context)
	kdp_snapshot++;

	stack_snapshot_ret = FUNC0(stack_snapshot_pid,
	    stack_snapshot_flags,
	    &stack_snapshot_bytes_traced);

	kdp_snapshot--;
	return stack_snapshot_ret;
}