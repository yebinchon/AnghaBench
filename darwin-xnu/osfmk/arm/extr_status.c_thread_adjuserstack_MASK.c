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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct arm_saved_state {int sp; } ;

/* Variables and functions */
 struct arm_saved_state* FUNC0 (int /*<<< orphan*/ ) ; 

uint64_t
FUNC1(thread_t thread, int adjust)
{
	struct arm_saved_state *sv;

	sv = FUNC0(thread);

	sv->sp += adjust;

	return sv->sp;
}