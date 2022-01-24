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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  mach_atm_subaid_t ;
typedef  int kern_return_t ;
typedef  int /*<<< orphan*/  aid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int KERN_FAILURE ; 
 int KERN_SUCCESS ; 
 int MACH_SEND_TIMED_OUT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC8(
	aid_t aid,
	mach_atm_subaid_t sub_aid,
	mach_port_t *buffers_array,
	uint64_t *sizes_array,
	mach_msg_type_number_t count,
	uint32_t flags)
{
	mach_port_t user_port;
	int			error;
	thread_t th = FUNC2();
	kern_return_t kr;

	error = FUNC3(FUNC4(), &user_port);
	if ((error != KERN_SUCCESS) || !FUNC0(user_port)) {
		return KERN_FAILURE;
	}

	FUNC7(th);
	kr = FUNC1(user_port, aid, sub_aid, flags, buffers_array, count, sizes_array, count);
	FUNC6(th);

	if (kr != KERN_SUCCESS) {
		FUNC5(user_port);

		if (kr == MACH_SEND_TIMED_OUT) {
			kr = KERN_SUCCESS;
		}
	}

	return kr;
}