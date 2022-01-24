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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PROC_INFO_CALL_SETCONTROL ; 
 int /*<<< orphan*/  PROC_SELFSET_PCONTROL ; 
 int const PROC_SETPC_NONE ; 
 int const PROC_SETPC_TERMINATE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 () ; 

int
FUNC2(const int control)
{
	int retval ;

	if (control < PROC_SETPC_NONE || control > PROC_SETPC_TERMINATE)
		return(EINVAL);

	if ((retval = FUNC0(PROC_INFO_CALL_SETCONTROL, FUNC1(), PROC_SELFSET_PCONTROL, (uint64_t)control, NULL, 0)) == -1)
		return(errno);
		
	return(0);
}