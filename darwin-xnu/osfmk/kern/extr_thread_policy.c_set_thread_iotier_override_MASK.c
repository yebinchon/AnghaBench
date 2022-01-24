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
typedef  TYPE_1__* thread_t ;
struct TYPE_3__ {int iotier_override; int /*<<< orphan*/  uthread; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int*) ; 
 int THROTTLE_LEVEL_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(thread_t thread, int policy)
{
	int current_override;

	/* Let most aggressive I/O policy win until user boundary */
	do {
		current_override = thread->iotier_override;

		if (current_override != THROTTLE_LEVEL_NONE)
			policy = FUNC0(current_override, policy);

		if (current_override == policy) {
			/* no effective change */
			return;
		}
	} while (!FUNC1(current_override, policy, &thread->iotier_override));

	/*
	 * Since the thread may be currently throttled,
	 * re-evaluate tiers and potentially break out
	 * of an msleep
	 */
	FUNC2(thread->uthread);
}