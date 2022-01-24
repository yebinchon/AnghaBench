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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  semaphore_t ;
struct TYPE_3__ {unsigned int tv_sec; scalar_t__ tv_nsec; } ;
typedef  TYPE_1__ mach_timespec_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ clock_res_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ KERN_INVALID_VALUE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  SEMAPHORE_NULL ; 
 int SEMAPHORE_OPTION_NONE ; 
 int SEMAPHORE_TIMEOUT_NOBLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void (*) (scalar_t__)) ; 

kern_return_t
FUNC5(
	mach_port_name_t name,
	unsigned int            sec,
	clock_res_t             nsec,
	void (*caller_cont)(kern_return_t))
{
	semaphore_t semaphore;
	mach_timespec_t wait_time;
	kern_return_t kr;

	wait_time.tv_sec = sec;
	wait_time.tv_nsec = nsec;
	if(FUNC0(&wait_time))
		return KERN_INVALID_VALUE;
	
	kr = FUNC1(name, &semaphore);
	if (kr == KERN_SUCCESS) {
		int				option = SEMAPHORE_OPTION_NONE;
		uint64_t		deadline = 0;

		if (sec == 0 && nsec == 0)
			option = SEMAPHORE_TIMEOUT_NOBLOCK;
		else
			deadline = FUNC2(sec, nsec);

		kr = FUNC4(semaphore,
				SEMAPHORE_NULL,
				deadline, option,
				caller_cont);
		FUNC3(semaphore);
	}
	return kr;
}