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
struct socket {int so_flags; int so_flags1; struct flow_divert_pcb* so_fd_pcb; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct inpcb {scalar_t__ inp_state; } ;
struct flow_divert_pcb {int flags; int /*<<< orphan*/  bytes_written_by_app; scalar_t__ send_window; } ;
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  int errno_t ;

/* Variables and functions */
 int ECONNRESET ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*) ; 
 int FLOW_DIVERT_CONNECT_STARTED ; 
 scalar_t__ INPCB_STATE_DEAD ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int MSG_OOB ; 
 int PRUS_EOF ; 
 int SOF1_DATA_IDEMPOTENT ; 
 int SOF_FLOW_DIVERT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct flow_divert_pcb*) ; 
 scalar_t__ FUNC4 (struct flow_divert_pcb*) ; 
 int FUNC5 (struct socket*,struct sockaddr*,struct proc*) ; 
 int FUNC6 (struct flow_divert_pcb*,int /*<<< orphan*/ *,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 struct inpcb* FUNC12 (struct socket*) ; 

__attribute__((used)) static errno_t
FUNC13(struct socket *so, int flags, mbuf_t data, struct sockaddr *to, mbuf_t control, struct proc *p)
{
	struct flow_divert_pcb	*fd_cb	= so->so_fd_pcb;
	int						error	= 0;
	struct inpcb *inp;

	FUNC2((so->so_flags & SOF_FLOW_DIVERT) && so->so_fd_pcb != NULL);

	inp = FUNC12(so);
	if (inp == NULL || inp->inp_state == INPCB_STATE_DEAD) {
		error = ECONNRESET;
		goto done;
	}

	if (control && FUNC10(control) > 0) {
		error = EINVAL;
		goto done;
	}

	if (flags & MSG_OOB) {
		error = EINVAL;
		goto done; /* We don't support OOB data */
	}
	
	error = FUNC3(fd_cb) || 
	    FUNC4(fd_cb);
	if (error) {
		goto done;
	}

	/* Implicit connect */
	if (!(fd_cb->flags & FLOW_DIVERT_CONNECT_STARTED)) {
		FUNC1(LOG_INFO, fd_cb, "implicit connect");
		error = FUNC5(so, to, p);
		if (error) {
			goto done;
		}

		if (so->so_flags1 & SOF1_DATA_IDEMPOTENT) {
			/* Open up the send window so that the data will get sent right away */
			fd_cb->send_window = FUNC11(data);
		}
	}

	FUNC0(LOG_DEBUG, fd_cb, "app wrote %lu bytes", FUNC11(data));

	fd_cb->bytes_written_by_app += FUNC11(data);
	error = FUNC6(fd_cb, data, to);
	if (error) {
		goto done;
	}

	data = NULL;

	if (flags & PRUS_EOF) {
		FUNC7(so);
	}

done:
	if (data) {
		FUNC9(data);
	}
	if (control) {
		FUNC8(control);
	}
	return error;
}