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
struct socket {struct flow_divert_pcb* so_fd_pcb; } ;
struct flow_divert_pcb {int flags; int /*<<< orphan*/ * connect_packet; } ;
typedef  int /*<<< orphan*/ * mbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*) ; 
 int FLOW_DIVERT_CONNECT_STARTED ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC1 (struct flow_divert_pcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 

__attribute__((used)) static int
FUNC4(struct socket *so)
{
	struct flow_divert_pcb	*fd_cb	= so->so_fd_pcb;
	int error = 0;

	if (!(fd_cb->flags & FLOW_DIVERT_CONNECT_STARTED) && fd_cb->connect_packet != NULL) {
		FUNC0(LOG_INFO, fd_cb, "Pre-connect read: sending saved connect packet");
		mbuf_t connect_packet = fd_cb->connect_packet;
		fd_cb->connect_packet = NULL;

		error = FUNC1(fd_cb, connect_packet, TRUE);
		if (error) {
			FUNC2(connect_packet);
		}

		fd_cb->flags |= FLOW_DIVERT_CONNECT_STARTED;
	}

	FUNC3(so);

	return error;
}