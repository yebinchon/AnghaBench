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
struct socket {int so_flags; int /*<<< orphan*/  so_rcv; struct flow_divert_pcb* so_fd_pcb; } ;
struct flow_divert_pcb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ FUNC1 (struct socket*) ; 
 int SOF_FLOW_DIVERT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct flow_divert_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FUNC6 (struct flow_divert_pcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 

__attribute__((used)) static int
FUNC9(struct socket *so)
{
	struct flow_divert_pcb	*fd_cb		= so->so_fd_pcb;

	FUNC2((so->so_flags & SOF_FLOW_DIVERT) && so->so_fd_pcb != NULL);

	FUNC0(LOG_INFO, fd_cb, "Closing");

	if (FUNC1(so) == SOCK_STREAM) {
		FUNC8(so);
		FUNC7(&so->so_rcv);
	}

	FUNC4(fd_cb, TRUE);
	FUNC6(fd_cb, SHUT_RDWR, FALSE);
	FUNC5(fd_cb);

	/* Remove from the group */
	FUNC3(fd_cb);

	return 0;
}