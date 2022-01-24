#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct socket {int so_flags; int so_error; int so_flags1; struct flow_divert_pcb* so_fd_pcb; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct inpcb {scalar_t__ inp_state; } ;
struct flow_divert_pcb {int flags; int /*<<< orphan*/ * connect_packet; int /*<<< orphan*/  so; int /*<<< orphan*/ * remote_address; int /*<<< orphan*/ * group; } ;
typedef  int /*<<< orphan*/  proc_t ;
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  int errno_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EAFNOSUPPORT ; 
 int EALREADY ; 
 int EINVAL ; 
 int ENETUNREACH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*) ; 
 int FLOW_DIVERT_CONNECT_STARTED ; 
 int FLOW_DIVERT_TRANSFERRED ; 
 scalar_t__ INPCB_STATE_DEAD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int SOF1_PRECONNECT_DATA ; 
 int SOF_FLOW_DIVERT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct flow_divert_pcb*,struct sockaddr*,struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC4 (struct flow_divert_pcb*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 
 struct inpcb* FUNC9 (struct socket*) ; 

errno_t
FUNC10(struct socket *so, struct sockaddr *to, proc_t p)
{
	struct flow_divert_pcb	*fd_cb	= so->so_fd_pcb;
	int						error	= 0;
	struct inpcb			*inp	= FUNC9(so);
	struct sockaddr_in		*sinp;
	mbuf_t					connect_packet = NULL;
	int						do_send = 1;

	FUNC2((so->so_flags & SOF_FLOW_DIVERT) && so->so_fd_pcb != NULL);

	if (fd_cb->group == NULL) {
		error = ENETUNREACH;
		goto done;
	}

	if (inp == NULL) {
		error = EINVAL;
		goto done;
	} else if (inp->inp_state == INPCB_STATE_DEAD) {
		if (so->so_error) {
			error = so->so_error;
			so->so_error = 0;
		} else {
			error = EINVAL;
		}
		goto done;
	}

	if ((fd_cb->flags & FLOW_DIVERT_CONNECT_STARTED) && !(fd_cb->flags & FLOW_DIVERT_TRANSFERRED)) {
		error = EALREADY;
		goto done;
	}

	if (fd_cb->flags & FLOW_DIVERT_TRANSFERRED) {
		FUNC0(LOG_INFO, fd_cb, "fully transferred");
		fd_cb->flags &= ~FLOW_DIVERT_TRANSFERRED;
		if (fd_cb->remote_address != NULL) {
			FUNC7(fd_cb->so);
			goto done;
		}
	}

	FUNC0(LOG_INFO, fd_cb, "Connecting");

	if (fd_cb->connect_packet == NULL) {
		if (to == NULL) {
			FUNC0(LOG_ERR, fd_cb, "No destination address available when creating connect packet");
			error = EINVAL;
			goto done;
		}

		sinp = (struct sockaddr_in *)(void *)to;
		if (sinp->sin_family == AF_INET && FUNC1(FUNC6(sinp->sin_addr.s_addr))) {
			error = EAFNOSUPPORT;
			goto done;
		}

		error = FUNC3(fd_cb, to, so, p, &connect_packet);
		if (error) {
			goto done;
		}

		if (so->so_flags1 & SOF1_PRECONNECT_DATA) {
			FUNC0(LOG_INFO, fd_cb, "Delaying sending the connect packet until send or receive");
			do_send = 0;
		}
	} else {
		FUNC0(LOG_INFO, fd_cb, "Sending saved connect packet");
		connect_packet = fd_cb->connect_packet;
		fd_cb->connect_packet = NULL;
	}

	if (do_send) {
		error = FUNC4(fd_cb, connect_packet, TRUE);
		if (error) {
			goto done;
		}

		fd_cb->flags |= FLOW_DIVERT_CONNECT_STARTED;
	} else {
		fd_cb->connect_packet = connect_packet;
		connect_packet = NULL;
	}

	FUNC8(so);

done:
	if (error && connect_packet != NULL) {
		FUNC5(connect_packet);
	}
	return error;
}