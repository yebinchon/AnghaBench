#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ user_ssize_t ;
struct vnop_read_args {int a_ioflag; TYPE_3__* a_vp; struct uio* a_uio; } ;
struct uio {scalar_t__ uio_rw; } ;
struct TYPE_5__ {scalar_t__ sb_cc; } ;
struct socket {int /*<<< orphan*/  so_state; TYPE_2__ so_rcv; } ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;
struct TYPE_6__ {TYPE_1__* v_fifoinfo; } ;
struct TYPE_4__ {int fi_writers; struct socket* fi_readsock; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int IO_NDELAY ; 
 int MSG_NBIO ; 
 int /*<<< orphan*/  SS_CANTRCVMORE ; 
 scalar_t__ UIO_READ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,int) ; 
 int FUNC4 (struct socket*,struct sockaddr**,struct uio*,struct mbuf**,struct mbuf**,int*) ; 
 scalar_t__ FUNC5 (struct uio*) ; 

int
FUNC6(struct vnop_read_args *ap)
{
	struct uio *uio = ap->a_uio;
	struct socket *rso = ap->a_vp->v_fifoinfo->fi_readsock;
	user_ssize_t startresid;
	int error;
	int rflags;

#if DIAGNOSTIC
	if (uio->uio_rw != UIO_READ)
		panic("fifo_read mode");
#endif
	if (FUNC5(uio) == 0)
		return (0);

	rflags = (ap->a_ioflag & IO_NDELAY) ? MSG_NBIO : 0;

	startresid = FUNC5(uio);

	/* fifo conformance - if we have a reader open on the fifo but no 
	 * writers then we need to make sure we do not block.  We do that by 
	 * checking the receive buffer and if empty set error to EWOULDBLOCK.
	 * If error is set to EWOULDBLOCK we skip the call into soreceive
	 */
	error = 0;
	if (ap->a_vp->v_fifoinfo->fi_writers < 1) {
		FUNC2(rso, 1);
		error = (rso->so_rcv.sb_cc == 0) ? EWOULDBLOCK : 0;
		FUNC3(rso, 1);
	}

	/* skip soreceive to avoid blocking when we have no writers */
	if (error != EWOULDBLOCK) {
		error = FUNC4(rso, (struct sockaddr **)0, uio, (struct mbuf **)0,
						(struct mbuf **)0, &rflags);
		if (error == 0)
			FUNC0(ap->a_vp, 0);
	}
	else {
		/* clear EWOULDBLOCK and return EOF (zero) */
		error = 0;
	}
	/*
	 * Clear EOF indication after first such return.
	 */
	if (FUNC5(uio) == startresid) {
		FUNC2(rso, 1);
		rso->so_state &= ~SS_CANTRCVMORE;
		FUNC3(rso, 1);
	}
	return (error);
}