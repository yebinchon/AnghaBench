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
struct exception_action {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * exc_actions; } ;

/* Variables and functions */
 int EXC_TYPES_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(
	thread_t	thread)
{
	FUNC0(thread->exc_actions == NULL);

	thread->exc_actions = FUNC2(sizeof(struct exception_action) * EXC_TYPES_COUNT);
	FUNC1(thread->exc_actions, sizeof(struct exception_action) * EXC_TYPES_COUNT);

#if CONFIG_MACF
	for (size_t i = 0; i < EXC_TYPES_COUNT; ++i) {
		mac_exc_associate_action_label(thread->exc_actions + i, mac_exc_create_label());
	}
#endif
}