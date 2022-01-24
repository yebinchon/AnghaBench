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
typedef  TYPE_1__* work_interval_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_4__ {int create_flags; scalar_t__ work_interval_id; int /*<<< orphan*/  wi_port; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int WORK_INTERVAL_FLAG_JOINABLE ; 
 int /*<<< orphan*/  WORK_INTERVAL_OPERATION_DESTROY ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int
FUNC4(work_interval_t interval_handle)
{
	if (interval_handle == NULL) {
		errno = EINVAL;
		return -1;
	}

	if (interval_handle->create_flags & WORK_INTERVAL_FLAG_JOINABLE) {
		mach_port_t wi_port = interval_handle->wi_port;

		/*
		 * A joinable work interval's lifetime is tied to the port lifetime.
		 * When the last port reference is destroyed, the work interval
		 * is destroyed via no-senders notification.
		 *
		 * Note however that after destroy it can no longer be notified
		 * because the userspace token is gone.
		 *
		 * Additionally, this function does not cause the thread to un-join
		 * the interval.
		 */
		kern_return_t kr = FUNC2(FUNC3(), wi_port);

		if (kr != KERN_SUCCESS) {
			/*
			 * If the deallocate fails, then someone got their port
			 * lifecycle wrong and over-released a port right.
			 *
			 * Return an error so the client can assert on this,
			 * and still find the port name in the interval handle.
			 */
			errno = EINVAL;
			return -1;
		}

		interval_handle->wi_port = MACH_PORT_NULL;
		interval_handle->work_interval_id = 0;

		FUNC1(interval_handle);
		return 0;
	} else {
		uint64_t work_interval_id = interval_handle->work_interval_id;

		int ret = FUNC0(WORK_INTERVAL_OPERATION_DESTROY,
		                              work_interval_id, NULL, 0);

		interval_handle->work_interval_id = 0;

		int saved_errno = errno;
		FUNC1(interval_handle);
		errno = saved_errno;
		return ret;
	}
}