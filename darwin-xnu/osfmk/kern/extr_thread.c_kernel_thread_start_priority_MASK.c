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
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  integer_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC4(
	thread_continue_t	continuation,
	void				*parameter,
	integer_t			priority,
	thread_t			*new_thread)
{
	kern_return_t	result;
	thread_t		thread;

	result = FUNC0(continuation, parameter, priority, &thread);
	if (result != KERN_SUCCESS)
		return (result);

	*new_thread = thread;	

	FUNC1(thread);
	FUNC3(thread);
	FUNC2(thread);

	return (result);
}