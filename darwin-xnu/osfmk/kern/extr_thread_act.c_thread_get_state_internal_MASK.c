#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  thread_state_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_13__ {scalar_t__ inspection; scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ KERN_ABORTED ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ KERN_TERMINATED ; 
 TYPE_1__* THREAD_NULL ; 
 TYPE_1__* FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static inline kern_return_t
FUNC9(
	thread_t		thread,
	int						flavor,
	thread_state_t			state,			/* pointer to OUT array */
	mach_msg_type_number_t	*state_count,	/*IN/OUT*/
	boolean_t				to_user)
{
	kern_return_t		result = KERN_SUCCESS;

	if (thread == THREAD_NULL)
		return (KERN_INVALID_ARGUMENT);

	FUNC4(thread);

	if (thread->active) {
		if (thread != FUNC0()) {
			FUNC3(thread);

			FUNC5(thread);

			if (FUNC7(thread, FALSE)) {
				FUNC4(thread);
				result = FUNC1(
										thread, flavor, state, state_count);
				FUNC8(thread);
			}
			else {
				FUNC4(thread);
				result = KERN_ABORTED;
			}

			FUNC6(thread);
		}
		else
			result = FUNC1(
									thread, flavor, state, state_count);
	}
	else if (thread->inspection)
	{
		result = FUNC1(
									thread, flavor, state, state_count);
	}
	else
		result = KERN_TERMINATED;

	if (to_user && result == KERN_SUCCESS) {
		result = FUNC2(thread, flavor, state,
				state_count);
	}

	FUNC5(thread);

	return (result);
}