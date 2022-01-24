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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_APP_SIGNPOST ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int /*<<< orphan*/ ,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ; 

__attribute__((used)) static int
FUNC3(uint32_t debugid, uintptr_t arg1, uintptr_t arg2, uintptr_t arg3, uintptr_t arg4)
{
	if (FUNC1(debugid) != 0) {
		errno = EINVAL;
		return -1;
	}

	debugid |= FUNC0(DBG_APP_SIGNPOST, 0);

	return FUNC2(debugid, arg1, arg2, arg3, arg4);
}