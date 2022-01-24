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
typedef  scalar_t__ thread_t ;
typedef  int /*<<< orphan*/  thread_state_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

kern_return_t
FUNC2(
	thread_t				thread,
	int						flavor,
	thread_state_t			state,
	mach_msg_type_number_t	*count)
{
    if (thread == FUNC0())
	    return (KERN_INVALID_ARGUMENT);

    return (FUNC1(thread, flavor, state, count));
}