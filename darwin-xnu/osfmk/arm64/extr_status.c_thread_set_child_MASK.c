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
typedef  int /*<<< orphan*/  thread_t ;
struct arm_saved_state {int dummy; } ;

/* Variables and functions */
 struct arm_saved_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct arm_saved_state*,int,unsigned long long) ; 

void
FUNC2(
		 thread_t child,
		 int pid)
{
	struct arm_saved_state *child_state;

	child_state = FUNC0(child);

	FUNC1(child_state, 0, pid);
	FUNC1(child_state, 1, 1ULL);
}