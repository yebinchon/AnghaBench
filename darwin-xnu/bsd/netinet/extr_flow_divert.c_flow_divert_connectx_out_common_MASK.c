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
typedef  scalar_t__ user_ssize_t ;
typedef  int /*<<< orphan*/  uio_t ;
struct uio {int dummy; } ;
struct socket {TYPE_2__* so_proto; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct inpcb {int dummy; } ;
typedef  int sae_connid_t ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_sosend ) (struct socket*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EINVAL ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct socket*,struct sockaddr*,struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,int /*<<< orphan*/ ) ; 
 struct inpcb* FUNC4 (struct socket*) ; 
 int FUNC5 (struct socket*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct uio*) ; 

__attribute__((used)) static int
FUNC7(struct socket *so, struct sockaddr *dst,
    struct proc *p, sae_connid_t *pcid, struct uio *auio, user_ssize_t *bytes_written)
{
	struct inpcb *inp = FUNC4(so);
	int error;

	if (inp == NULL) {
		return (EINVAL);
	}

	FUNC0(dst != NULL);

	error = FUNC1(so, dst, p);

	if (error != 0) {
		return error;
	}

	/* if there is data, send it */
	if (auio != NULL) {
		user_ssize_t datalen = 0;

		FUNC3(so, 0);

		FUNC0(bytes_written != NULL);

		datalen = FUNC6(auio);
		error = so->so_proto->pr_usrreqs->pru_sosend(so, NULL, (uio_t)auio, NULL, NULL, 0);
		FUNC2(so, 0);

		if (error == 0 || error == EWOULDBLOCK) {
			*bytes_written = datalen - FUNC6(auio);
		}

		/*
		 * sosend returns EWOULDBLOCK if it's a non-blocking
		 * socket or a timeout occured (this allows to return
		 * the amount of queued data through sendit()).
		 *
		 * However, connectx() returns EINPROGRESS in case of a
		 * blocking socket. So we change the return value here.
		 */
		if (error == EWOULDBLOCK) {
			error = EINPROGRESS;
		}
	}

	if (error == 0 && pcid != NULL) {
		*pcid = 1;	/* there is only 1 connection for a TCP */
	}

	return (error);
}