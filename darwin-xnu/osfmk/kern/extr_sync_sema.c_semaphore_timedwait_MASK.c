#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ semaphore_t ;
struct TYPE_4__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
typedef  TYPE_1__ mach_timespec_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_INVALID_VALUE ; 
 scalar_t__ SEMAPHORE_NULL ; 
 int SEMAPHORE_OPTION_NONE ; 
 int SEMAPHORE_TIMEOUT_NOBLOCK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,void (*) (int /*<<< orphan*/ )) ; 

kern_return_t
FUNC3(
	semaphore_t		semaphore,
	mach_timespec_t		wait_time)
{
	int				option = SEMAPHORE_OPTION_NONE;
	uint64_t		deadline = 0;

	if (semaphore == SEMAPHORE_NULL)
		return KERN_INVALID_ARGUMENT;
	
	if(FUNC0(&wait_time))
		return KERN_INVALID_VALUE;

	if (wait_time.tv_sec == 0 && wait_time.tv_nsec == 0)
		option = SEMAPHORE_TIMEOUT_NOBLOCK;
	else
		deadline = FUNC1(wait_time.tv_sec, wait_time.tv_nsec);
	
	return (FUNC2(semaphore,
					SEMAPHORE_NULL,
					deadline, option,
					(void(*)(kern_return_t))0));
	
}