#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct flow_divert_pcb {int flags; TYPE_2__* so; } ;
struct TYPE_3__ {scalar_t__ sb_cc; } ;
struct TYPE_4__ {TYPE_1__ so_snd; } ;

/* Variables and functions */
 scalar_t__ ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_divert_pcb*,char*,int) ; 
 int FLOW_DIVERT_READ_CLOSED ; 
 int FLOW_DIVERT_TUNNEL_RD_CLOSED ; 
 int FLOW_DIVERT_TUNNEL_WR_CLOSED ; 
 int FLOW_DIVERT_WRITE_CLOSED ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int SHUT_RD ; 
 int SHUT_RDWR ; 
 int SHUT_WR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (struct flow_divert_pcb*,int) ; 
 int FUNC3 (struct flow_divert_pcb*) ; 

__attribute__((used)) static void
FUNC4(struct flow_divert_pcb *fd_cb)
{
	int		how		= -1;

	/* Do not send any close messages if there is still data in the send buffer */
	if (fd_cb->so->so_snd.sb_cc == 0) {
		if ((fd_cb->flags & (FLOW_DIVERT_READ_CLOSED|FLOW_DIVERT_TUNNEL_RD_CLOSED)) == FLOW_DIVERT_READ_CLOSED) {
			/* Socket closed reads, but tunnel did not. Tell tunnel to close reads */
			how = SHUT_RD;
		}
		if ((fd_cb->flags & (FLOW_DIVERT_WRITE_CLOSED|FLOW_DIVERT_TUNNEL_WR_CLOSED)) == FLOW_DIVERT_WRITE_CLOSED) {
			/* Socket closed writes, but tunnel did not. Tell tunnel to close writes */
			if (how == SHUT_RD) {
				how = SHUT_RDWR;
			} else {
				how = SHUT_WR;
			}
		}
	}

	if (how != -1) {
		FUNC0(LOG_INFO, fd_cb, "sending close, how = %d", how);
		if (FUNC2(fd_cb, how) != ENOBUFS) {
			/* Successfully sent the close packet. Record the ways in which the tunnel has been closed */
			if (how != SHUT_RD) {
				fd_cb->flags |= FLOW_DIVERT_TUNNEL_WR_CLOSED;
			}
			if (how != SHUT_WR) {
				fd_cb->flags |= FLOW_DIVERT_TUNNEL_RD_CLOSED;
			}
		}
	}

	if (FUNC3(fd_cb) == SHUT_RDWR) {
		FUNC1(fd_cb->so);
	}
}