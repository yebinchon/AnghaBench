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
typedef  TYPE_1__* work_interval_t ;
typedef  int /*<<< orphan*/  mach_port_t ;
struct TYPE_3__ {int create_flags; int /*<<< orphan*/  wi_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int WORK_INTERVAL_FLAG_JOINABLE ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(work_interval_t interval_handle)
{
	if (interval_handle == NULL) {
		errno = EINVAL;
		return -1;
	}

	if ((interval_handle->create_flags & WORK_INTERVAL_FLAG_JOINABLE) == 0) {
		errno = EINVAL;
		return -1;
	}

	mach_port_t wi_port = interval_handle->wi_port;

	if (!FUNC0(wi_port)) {
		errno = EINVAL;
		return -1;
	}

	return FUNC1(wi_port);
}