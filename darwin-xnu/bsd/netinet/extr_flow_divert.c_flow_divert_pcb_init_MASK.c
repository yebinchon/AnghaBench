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
struct socket {int so_flags; struct flow_divert_pcb* so_fd_pcb; } ;
struct flow_divert_pcb {int /*<<< orphan*/  control_group_unit; } ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 scalar_t__ EALREADY ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ FUNC3 (struct socket*) ; 
 int SOF_FLOW_DIVERT ; 
 struct flow_divert_pcb* FUNC4 (struct socket*) ; 
 scalar_t__ FUNC5 (struct flow_divert_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 

errno_t
FUNC8(struct socket *so, uint32_t ctl_unit)
{
	errno_t error = 0;
	struct flow_divert_pcb *fd_cb;

	if (so->so_flags & SOF_FLOW_DIVERT) {
		return EALREADY;
	}
		
	fd_cb = FUNC4(so);
	if (fd_cb != NULL) {
		error = FUNC5(fd_cb, ctl_unit);
		if (error) {
			FUNC0(LOG_ERR, fd_cb, "pcb insert failed: %d", error);
			FUNC2(fd_cb);
		} else {
			fd_cb->control_group_unit = ctl_unit;
			so->so_fd_pcb = fd_cb;

			if (FUNC3(so) == SOCK_STREAM) {
				FUNC6(so);
			} else if (FUNC3(so) == SOCK_DGRAM) {
				FUNC7(so);
			}

			FUNC1(LOG_INFO, fd_cb, "Created");
		}
	} else {
		error = ENOMEM;
	}

	return error;
}