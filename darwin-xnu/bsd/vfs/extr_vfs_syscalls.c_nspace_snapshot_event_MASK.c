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
typedef  int /*<<< orphan*/ * vnode_t ;
typedef  int uint64_t ;
typedef  scalar_t__ time_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EDEADLK ; 
 int EINTR ; 
 int NAMESPACE_HANDLER_SNAPSHOT_EVENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,void*) ; 
 scalar_t__ snapshot_timestamp ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(vnode_t vp, time_t ctime, uint64_t op_type, void *arg)
{
	int snapshot_error = 0;

	if (vp == NULL) {
		return 0;
	}

	/* Swap files are special; skip them */
	if (FUNC2(vp)) {
		return 0;
	}

	if (ctime != 0 && snapshot_timestamp != 0 && (ctime <= snapshot_timestamp || FUNC3(vp))) {
		// the change time is within this epoch
		int error;

		error = FUNC1(vp, op_type | NAMESPACE_HANDLER_SNAPSHOT_EVENT, arg);
		if (error == EDEADLK) {
			snapshot_error = 0;
		} else if (error) {
			if (error == EAGAIN) {
				FUNC0("nspace_snapshot_event: timed out waiting for namespace handler...\n");
			} else if (error == EINTR) {
				// printf("nspace_snapshot_event: got a signal while waiting for namespace handler...\n");
				snapshot_error = EINTR;
			}
		}
	}

	return snapshot_error;
}