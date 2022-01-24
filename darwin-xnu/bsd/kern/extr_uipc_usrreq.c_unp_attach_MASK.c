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
struct unpcb {scalar_t__ unp_gencnt; struct socket* unp_socket; int /*<<< orphan*/  unp_refs; int /*<<< orphan*/  unp_mtx; } ;
struct TYPE_4__ {scalar_t__ sb_hiwat; int /*<<< orphan*/  sb_flags; } ;
struct TYPE_3__ {scalar_t__ sb_hiwat; int /*<<< orphan*/  sb_flags; } ;
struct socket {int so_type; TYPE_2__ so_snd; TYPE_1__ so_rcv; scalar_t__ so_pcb; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct unpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SB_UNIX ; 
#define  SOCK_DGRAM 129 
#define  SOCK_STREAM 128 
 int /*<<< orphan*/  FUNC2 (struct unpcb*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unp_count ; 
 int /*<<< orphan*/  unp_dhead ; 
 scalar_t__ unp_gencnt ; 
 int /*<<< orphan*/  unp_link ; 
 int /*<<< orphan*/  unp_list_mtx ; 
 int /*<<< orphan*/  unp_mtx_attr ; 
 int /*<<< orphan*/  unp_mtx_grp ; 
 int /*<<< orphan*/  unp_shead ; 
 int /*<<< orphan*/  unp_zone ; 
 int /*<<< orphan*/  unpdg_recvspace ; 
 int /*<<< orphan*/  unpdg_sendspace ; 
 int /*<<< orphan*/  unpst_recvspace ; 
 int /*<<< orphan*/  unpst_sendspace ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct socket *so)
{
	struct unpcb *unp;
	int error = 0;

	if (so->so_snd.sb_hiwat == 0 || so->so_rcv.sb_hiwat == 0) {
		switch (so->so_type) {

		case SOCK_STREAM:
			error = FUNC7(so, unpst_sendspace, unpst_recvspace);
			break;

		case SOCK_DGRAM:
			error = FUNC7(so, unpdg_sendspace, unpdg_recvspace);
			break;

		default:
			FUNC6("unp_attach");
		}
		if (error)
			return (error);
	}
	unp = (struct unpcb *)FUNC8(unp_zone);
	if (unp == NULL)
		return (ENOBUFS);
	FUNC2(unp, sizeof (*unp));

	FUNC3(&unp->unp_mtx,
		unp_mtx_grp, unp_mtx_attr);

	FUNC5(unp_list_mtx);
	FUNC0(&unp->unp_refs);
	unp->unp_socket = so;
	unp->unp_gencnt = ++unp_gencnt;
	unp_count++;
	FUNC1(so->so_type == SOCK_DGRAM ?
	    &unp_dhead : &unp_shead, unp, unp_link);
	FUNC4(unp_list_mtx);
	so->so_pcb = (caddr_t)unp;
	/*
	 * Mark AF_UNIX socket buffers accordingly so that:
	 *
	 * a. In the SOCK_STREAM case, socket buffer append won't fail due to
	 *    the lack of space; this essentially loosens the sbspace() check,
	 *    since there is disconnect between sosend() and uipc_send() with
	 *    respect to flow control that might result in our dropping the
	 *    data in uipc_send().  By setting this, we allow for slightly
	 *    more records to be appended to the receiving socket to avoid
	 *    losing data (which we can't afford in the SOCK_STREAM case).
	 *    Flow control still takes place since we adjust the sender's
	 *    hiwat during each send.  This doesn't affect the SOCK_DGRAM
	 *    case and append would still fail when the queue overflows.
	 *
	 * b. In the presence of control messages containing internalized
	 *    file descriptors, the append routines will not free them since
	 *    we'd need to undo the work first via unp_dispose().
	 */
	so->so_rcv.sb_flags |= SB_UNIX;
	so->so_snd.sb_flags |= SB_UNIX;
	return (0);
}