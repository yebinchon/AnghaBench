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
struct _iopol_param_t {int iop_scope; int iop_iotype; int iop_policy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOPOL_CMD_SET ; 
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct _iopol_param_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(int iotype, int scope, int policy)
{
	/* kernel validates the indiv values, no need to repeat it */
	struct _iopol_param_t iop_param;

	iop_param.iop_scope = scope;
	iop_param.iop_iotype = iotype;
	iop_param.iop_policy = policy;

	int rv = FUNC0(IOPOL_CMD_SET, &iop_param);
	if (rv == -2) {
		/* not an actual error but indication that __iopolicysys removed the thread QoS */
        FUNC1(MACH_PORT_NULL);
		rv = 0;
	}

	return rv;
}