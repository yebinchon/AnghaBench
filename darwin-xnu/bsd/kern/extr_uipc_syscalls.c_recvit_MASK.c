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
typedef  scalar_t__ user_addr_t ;
typedef  int /*<<< orphan*/  uio_t ;
struct user_msghdr {int /*<<< orphan*/  msg_flags; int /*<<< orphan*/  msg_controllen; scalar_t__ msg_control; int /*<<< orphan*/  msg_namelen; int /*<<< orphan*/  msg_name; } ;
struct socket {int so_state; TYPE_2__* so_proto; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct mbuf {int dummy; } ;
struct fileproc {scalar_t__ f_type; scalar_t__ f_data; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_4__ {int pr_flags; TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_soreceive ) (struct socket*,struct sockaddr**,int /*<<< orphan*/ ,struct mbuf**,struct mbuf**,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*) ; 
 int DBG_FNC_RECVIT ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 scalar_t__ DTYPE_SOCKET ; 
 int EBADF ; 
 int EINTR ; 
 int EINVAL ; 
 int ENOTSOCK ; 
 int ERESTART ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SONAME ; 
 int PR_CONNREQUIRED ; 
 int SS_DEFUNCT ; 
 int SS_ISCONNECTED ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC4 (struct proc*,struct mbuf*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*,int,struct fileproc*,int) ; 
 int FUNC7 (struct proc*,int,struct fileproc**,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct socket*) ; 
 int /*<<< orphan*/  FUNC11 (struct proc*) ; 
 int /*<<< orphan*/  FUNC12 (struct proc*) ; 
 int /*<<< orphan*/  sockaddr ; 
 int FUNC13 (struct socket*,struct sockaddr**,int /*<<< orphan*/ ,struct mbuf**,struct mbuf**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(struct proc *p, int s, struct user_msghdr *mp, uio_t uiop,
    user_addr_t namelenp, int32_t *retval)
{
	ssize_t len;
	int error;
	struct mbuf *control = 0;
	struct socket *so;
	struct sockaddr *fromsa = 0;
	struct fileproc *fp;

	FUNC2(DBG_FNC_RECVIT | DBG_FUNC_START, 0, 0, 0, 0, 0);
	FUNC11(p);
	if ((error = FUNC7(p, s, &fp, 1))) {
		FUNC2(DBG_FNC_RECVIT | DBG_FUNC_END, error, 0, 0, 0, 0);
		FUNC12(p);
		return (error);
	}
	if (fp->f_type != DTYPE_SOCKET) {
		FUNC6(p, s, fp, 1);
		FUNC12(p);
		return (ENOTSOCK);
	}

	so = (struct socket *)fp->f_data;
	if (so == NULL) {
		FUNC6(p, s, fp, 1);
		FUNC12(p);
		return (EBADF);
	}

	FUNC12(p);

#if CONFIG_MACF_SOCKET_SUBSET
	/*
	 * We check the state without holding the socket lock;
	 * if a race condition occurs, it would simply result
	 * in an extra call to the MAC check function.
	 */
	if (!(so->so_state & SS_DEFUNCT) &&
	    !(so->so_state & SS_ISCONNECTED) &&
	    !(so->so_proto->pr_flags & PR_CONNREQUIRED) &&
	    (error = mac_socket_check_receive(kauth_cred_get(), so)) != 0)
		goto out1;
#endif /* MAC_SOCKET_SUBSET */
	if (FUNC14(uiop) < 0) {
		FUNC2(DBG_FNC_RECVIT | DBG_FUNC_END, EINVAL, 0, 0, 0, 0);
		error = EINVAL;
		goto out1;
	}

	len = FUNC14(uiop);
	error = so->so_proto->pr_usrreqs->pru_soreceive(so, &fromsa, uiop,
	    (struct mbuf **)0, mp->msg_control ? &control : (struct mbuf **)0,
	    &mp->msg_flags);
	if (fromsa)
		FUNC0(sockaddr, FUNC16(FUNC15()),
		    fromsa);
	if (error) {
		if (FUNC14(uiop) != len && (error == ERESTART ||
		    error == EINTR || error == EWOULDBLOCK))
			error = 0;
	}
	if (error)
		goto out;

	*retval = len - FUNC14(uiop);

	if (mp->msg_name) {
		error = FUNC5(fromsa, mp->msg_name, &mp->msg_namelen);
		if (error)
			goto out;
		/* return the actual, untruncated address length */
		if (namelenp &&
		    (error = FUNC3((caddr_t)&mp->msg_namelen, namelenp,
		    sizeof (int)))) {
			goto out;
		}
	}

	if (mp->msg_control) {
		error = FUNC4(p, control, mp->msg_control,
		    &mp->msg_controllen, &mp->msg_flags);
	}
out:
	if (fromsa)
		FUNC1(fromsa, M_SONAME);
	if (control)
		FUNC9(control);
	FUNC2(DBG_FNC_RECVIT | DBG_FUNC_END, error, 0, 0, 0, 0);
out1:
	FUNC6(p, s, fp, 0);
	return (error);
}