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
typedef  int uint64_t ;
struct sysctl_req {scalar_t__ newptr; scalar_t__ oldptr; } ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  inputs ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ USER_ADDR_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int*,int) ; 
 int FUNC2 (int*,scalar_t__,int) ; 
 int FUNC3 (unsigned int,int*) ; 
 int FUNC4 (unsigned int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct sysctl_req *req, bool is_task_t)
{
	int error = 0;
	uint64_t inputs[2] = {};

	FUNC0(req != NULL);

	if (req->newptr == USER_ADDR_NULL) {
		return EFAULT;
	}

	if ((error = FUNC1(req->newptr, inputs, sizeof(inputs)))) {
		return error;
	}

	unsigned int actionid = (unsigned int)inputs[0];
	int new_filter = (int)inputs[1];

	if (req->oldptr != USER_ADDR_NULL) {
		int filter_out;
		if ((error = FUNC3(actionid, &filter_out))) {
			return error;
		}

		inputs[1] = filter_out;
		return FUNC2(inputs, req->oldptr, sizeof(inputs));
	} else {
		int pid = is_task_t ? FUNC5((mach_port_name_t)new_filter)
				: new_filter;

		return FUNC4(actionid, pid);
	}
}