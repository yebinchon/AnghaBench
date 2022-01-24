#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_3__ {scalar_t__ sb_cc; int /*<<< orphan*/  sb_mb; } ;
struct socket {TYPE_1__ so_rcv; struct flow_divert_pcb* so_fd_pcb; void* so_proto; int /*<<< orphan*/  so_flags; } ;
struct inpcb {struct ifnet* inp_last_outifp; } ;
struct ifnet {int dummy; } ;
struct flow_divert_pcb {int /*<<< orphan*/  flags; struct socket* so; } ;
struct flow_divert_group {int dummy; } ;
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  int errno_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct flow_divert_pcb*) ; 
 int /*<<< orphan*/  FLOW_DIVERT_TRANSFERRED ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  MBUF_DONTWAIT ; 
 scalar_t__ SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC4 (struct socket*) ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  SOF_FLOW_DIVERT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 
 struct flow_divert_pcb* FUNC8 (size_t,struct flow_divert_group*) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 
 scalar_t__ g_active_group_count ; 
 int /*<<< orphan*/  g_flow_divert_group_lck ; 
 struct flow_divert_group** g_flow_divert_groups ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  nil_pcb ; 
 void* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC14 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct socket*) ; 
 struct inpcb* FUNC19 (struct socket*) ; 

__attribute__((used)) static errno_t
FUNC20(struct socket *so, uint32_t flow_id, uint32_t ctl_unit)
{
	int									error		= 0;
	struct flow_divert_pcb				*fd_cb		= NULL;
	struct ifnet						*ifp		= NULL;
	struct inpcb						*inp		= NULL;
	struct socket						*old_so;
	mbuf_t								recv_data	= NULL;

	FUNC17(so, 0);

	FUNC1(LOG_INFO, &nil_pcb, "Attaching socket to flow %u", flow_id);

	/* Find the flow divert control block */
	FUNC11(&g_flow_divert_group_lck);
	if (g_flow_divert_groups != NULL && g_active_group_count > 0) {
		struct flow_divert_group *group = g_flow_divert_groups[ctl_unit];
		if (group != NULL) {
			fd_cb = FUNC8(flow_id, group);
		}
	}
	FUNC10(&g_flow_divert_group_lck);

	if (fd_cb == NULL) {
		error = ENOENT;
		goto done;
	}

	FUNC0(fd_cb);

	/* Dis-associate the flow divert control block from its current socket */
	old_so = fd_cb->so;

	inp = FUNC19(old_so); 

	FUNC6(inp != NULL);

	FUNC16(old_so, 0);
	FUNC7(old_so);
	old_so->so_flags &= ~SOF_FLOW_DIVERT;
	old_so->so_fd_pcb = NULL;
	if (FUNC5(old_so) == SOCK_STREAM) {
		old_so->so_proto = FUNC13(FUNC4(old_so), IPPROTO_TCP, SOCK_STREAM);
	} else if (FUNC5(old_so) == SOCK_DGRAM) {
		old_so->so_proto = FUNC13(FUNC4(old_so), IPPROTO_UDP, SOCK_DGRAM);
	}
	fd_cb->so = NULL;
	/* Save the output interface */
	ifp = inp->inp_last_outifp;
	if (old_so->so_rcv.sb_cc > 0) {
		error = FUNC12(old_so->so_rcv.sb_mb, MBUF_DONTWAIT, &recv_data);
		FUNC15(&old_so->so_rcv);
	}
	FUNC17(old_so, 0);

	/* Associate the new socket with the flow divert control block */
	FUNC16(so, 0);
	so->so_fd_pcb = fd_cb;
	inp = FUNC19(so);
	inp->inp_last_outifp = ifp;
	if (recv_data != NULL) {
		if (FUNC14(&so->so_rcv, recv_data)) {
			FUNC18(so);
		}
	}
	FUNC9(so);
	FUNC17(so, 0);

	fd_cb->so = so;
	fd_cb->flags |= FLOW_DIVERT_TRANSFERRED;

	FUNC3(fd_cb);

done:
	FUNC16(so, 0);

	if (fd_cb != NULL) {
		FUNC2(fd_cb);	/* Release the reference obtained via flow_divert_pcb_lookup */
	}

	return error;
}