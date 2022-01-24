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
typedef  int /*<<< orphan*/ * uio_t ;
struct user_msghdr {scalar_t__ msg_flags; scalar_t__ msg_control; scalar_t__ msg_iovlen; scalar_t__ msg_iov; int /*<<< orphan*/  msg_namelen; int /*<<< orphan*/  msg_name; } ;
struct socket {int dummy; } ;
struct sendto_nocancel_args {int /*<<< orphan*/  s; int /*<<< orphan*/  flags; int /*<<< orphan*/  tolen; int /*<<< orphan*/  to; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct proc {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DBG_FNC_SENDTO ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int EBADF ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIO_USERSPACE32 ; 
 int /*<<< orphan*/  UIO_USERSPACE64 ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 int /*<<< orphan*/  fd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct socket**) ; 
 int FUNC5 (struct proc*,struct socket*,struct user_msghdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct proc *p,
		struct sendto_nocancel_args *uap,
		int32_t *retval)
{
	struct user_msghdr msg;
	int error;
	uio_t auio = NULL;
	struct socket *so;

	FUNC2(DBG_FNC_SENDTO | DBG_FUNC_START, 0, 0, 0, 0, 0);
	FUNC0(fd, uap->s);

	auio = FUNC7(1, 0,
	    (FUNC1(p) ? UIO_USERSPACE64 : UIO_USERSPACE32),
	    UIO_WRITE);
	if (auio == NULL) {
		error = ENOMEM;
		goto done;
	}
	FUNC6(auio, uap->buf, uap->len);

	msg.msg_name = uap->to;
	msg.msg_namelen = uap->tolen;
	/* no need to set up msg_iov.  sendit uses uio_t we send it */
	msg.msg_iov = 0;
	msg.msg_iovlen = 0;
	msg.msg_control = 0;
	msg.msg_flags = 0;

	error = FUNC4(uap->s, &so);
	if (error)
		goto done;

	if (so == NULL) {
		error = EBADF;
	} else {
		error = FUNC5(p, so, &msg, auio, uap->flags, retval);
	}

	FUNC3(uap->s);
done:
	if (auio != NULL)
		FUNC8(auio);

	FUNC2(DBG_FNC_SENDTO | DBG_FUNC_END, error, *retval, 0, 0, 0);

	return (error);
}