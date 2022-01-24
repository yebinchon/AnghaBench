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
struct kern_ctl_reg {int /*<<< orphan*/  ctl_flags; int /*<<< orphan*/  ctl_disconnect; int /*<<< orphan*/  ctl_connect; int /*<<< orphan*/  ctl_name; } ;
typedef  scalar_t__ errno_t ;
typedef  int /*<<< orphan*/  ccdbg_control ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_FLAG_PRIVILEGED ; 
 int /*<<< orphan*/  CTL_FLAG_REG_SOCK_STREAM ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  TCP_CCDEBUG_CONTROL_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct kern_ctl_reg*,int) ; 
 scalar_t__ FUNC1 (struct kern_ctl_reg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tcp_ccdbg_control_connect ; 
 int /*<<< orphan*/  tcp_ccdbg_control_disconnect ; 
 int /*<<< orphan*/  tcp_ccdbg_ctlref ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct kern_ctl_reg ccdbg_control;
	errno_t err;

	FUNC0(&ccdbg_control, sizeof(ccdbg_control));
	FUNC3(ccdbg_control.ctl_name, TCP_CCDEBUG_CONTROL_NAME,
	    sizeof(ccdbg_control.ctl_name));
	ccdbg_control.ctl_connect = tcp_ccdbg_control_connect;
	ccdbg_control.ctl_disconnect = tcp_ccdbg_control_disconnect;
	ccdbg_control.ctl_flags |= CTL_FLAG_PRIVILEGED;
	ccdbg_control.ctl_flags |= CTL_FLAG_REG_SOCK_STREAM;

	err = FUNC1(&ccdbg_control, &tcp_ccdbg_ctlref);
	if (err != 0) {
		FUNC2(LOG_ERR, "failed to register tcp_cc debug control");
	}
}