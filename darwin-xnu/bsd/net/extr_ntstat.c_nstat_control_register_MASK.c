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
struct kern_ctl_reg {int ctl_flags; int /*<<< orphan*/  ctl_send; int /*<<< orphan*/  ctl_disconnect; int /*<<< orphan*/  ctl_connect; int /*<<< orphan*/  ctl_recvsize; int /*<<< orphan*/  ctl_sendsize; int /*<<< orphan*/  ctl_name; } ;
typedef  int /*<<< orphan*/  nstat_control ;
typedef  int /*<<< orphan*/  lck_grp_attr_t ;

/* Variables and functions */
 int CTL_FLAG_REG_CRIT ; 
 int CTL_FLAG_REG_EXTENDED ; 
 int /*<<< orphan*/  NET_STAT_CONTROL_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct kern_ctl_reg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kern_ctl_reg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nstat_control_connect ; 
 int /*<<< orphan*/  nstat_control_disconnect ; 
 int /*<<< orphan*/  nstat_control_send ; 
 int /*<<< orphan*/  nstat_ctlref ; 
 int /*<<< orphan*/  nstat_lck_grp ; 
 int /*<<< orphan*/  nstat_mtx ; 
 int /*<<< orphan*/  nstat_recvspace ; 
 int /*<<< orphan*/  nstat_sendspace ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(void)
{
	// Create our lock group first
	lck_grp_attr_t	*grp_attr = FUNC3();
	FUNC5(grp_attr);
	nstat_lck_grp = FUNC2("network statistics kctl", grp_attr);
	FUNC4(grp_attr);

	FUNC6(&nstat_mtx, nstat_lck_grp, NULL);

	// Register the control
	struct kern_ctl_reg	nstat_control;
	FUNC0(&nstat_control, sizeof(nstat_control));
	FUNC7(nstat_control.ctl_name, NET_STAT_CONTROL_NAME, sizeof(nstat_control.ctl_name));
	nstat_control.ctl_flags = CTL_FLAG_REG_EXTENDED | CTL_FLAG_REG_CRIT;
	nstat_control.ctl_sendsize = nstat_sendspace;
	nstat_control.ctl_recvsize = nstat_recvspace;
	nstat_control.ctl_connect = nstat_control_connect;
	nstat_control.ctl_disconnect = nstat_control_disconnect;
	nstat_control.ctl_send = nstat_control_send;

	FUNC1(&nstat_control, &nstat_ctlref);
}