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
struct socket {int so_flags; struct flow_divert_pcb* so_fd_pcb; } ;
struct flow_divert_pcb {int /*<<< orphan*/ * so; int /*<<< orphan*/ * group; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 int SOF_FLOW_DIVERT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FUNC6 (struct flow_divert_pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FUNC8 (struct flow_divert_pcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*,int /*<<< orphan*/ ) ; 

void
FUNC11(struct socket *so)
{
	struct flow_divert_pcb	*fd_cb		= so->so_fd_pcb;

	FUNC4((so->so_flags & SOF_FLOW_DIVERT) && so->so_fd_pcb != NULL);

	so->so_flags &= ~SOF_FLOW_DIVERT;
	so->so_fd_pcb = NULL;

	FUNC1(LOG_INFO, fd_cb, "Detaching, ref count = %d", fd_cb->ref_count);

	if (fd_cb->group != NULL) {
		/* Last-ditch effort to send any buffered data */
		FUNC6(fd_cb, TRUE);

		FUNC8(fd_cb, SHUT_RDWR, FALSE);
		FUNC7(fd_cb);
		/* Remove from the group */
		FUNC5(fd_cb);
	}

	FUNC10(so, 0);
	FUNC0(fd_cb);
	fd_cb->so = NULL;
	FUNC3(fd_cb);
	FUNC9(so, 0);

	FUNC2(fd_cb);	/* Release the socket's reference */
}