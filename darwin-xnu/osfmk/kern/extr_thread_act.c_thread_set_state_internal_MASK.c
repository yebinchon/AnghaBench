#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  thread_state_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_14__ {scalar_t__ active; } ;

/* Variables and functions */
 scalar_t__ KERN_ABORTED ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ KERN_TERMINATED ; 
 TYPE_1__* THREAD_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static inline kern_return_t
FUNC10(
	thread_t		thread,
	int						flavor,
	thread_state_t			state,
	mach_msg_type_number_t	state_count,
	boolean_t				from_user)
{
	kern_return_t		result = KERN_SUCCESS;

	if (thread == THREAD_NULL)
		return (KERN_INVALID_ARGUMENT);

	FUNC5(thread);

	if (thread->active) {
		if (from_user) {
			result = FUNC3(thread, flavor,
					state, state_count);
			if (result != KERN_SUCCESS) {
				goto out;
			}
		}
		if (thread != FUNC0()) {
			FUNC4(thread);

			FUNC6(thread);

			if (FUNC8(thread, TRUE)) {
				FUNC5(thread);
				result = FUNC2(
										thread, flavor, state, state_count);
				FUNC9(thread);
			}
			else {
				FUNC5(thread);
				result = KERN_ABORTED;
			}

			FUNC7(thread);
		}
		else
			result = FUNC2(
									thread, flavor, state, state_count);
	}
	else
		result = KERN_TERMINATED;

	if ((result == KERN_SUCCESS) && from_user)
		FUNC1(thread);

out:
	FUNC6(thread);

	return (result);
}