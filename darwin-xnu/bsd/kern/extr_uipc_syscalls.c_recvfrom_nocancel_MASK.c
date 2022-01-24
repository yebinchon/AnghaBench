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
struct user_msghdr {int /*<<< orphan*/  msg_flags; scalar_t__ msg_controllen; scalar_t__ msg_control; scalar_t__ msg_iovlen; scalar_t__ msg_iov; int /*<<< orphan*/  msg_name; scalar_t__ msg_namelen; } ;
struct recvfrom_nocancel_args {int /*<<< orphan*/  fromlenaddr; int /*<<< orphan*/  s; int /*<<< orphan*/  flags; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; int /*<<< orphan*/  from; } ;
struct proc {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DBG_FNC_RECVFROM ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_USERSPACE32 ; 
 int /*<<< orphan*/  UIO_USERSPACE64 ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fd ; 
 int FUNC4 (struct proc*,int /*<<< orphan*/ ,struct user_msghdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(struct proc *p, struct recvfrom_nocancel_args *uap,
    int32_t *retval)
{
	struct user_msghdr msg;
	int error;
	uio_t auio = NULL;

	FUNC2(DBG_FNC_RECVFROM | DBG_FUNC_START, 0, 0, 0, 0, 0);
	FUNC0(fd, uap->s);

	if (uap->fromlenaddr) {
		error = FUNC3(uap->fromlenaddr,
		    (caddr_t)&msg.msg_namelen, sizeof (msg.msg_namelen));
		if (error)
			return (error);
	} else {
		msg.msg_namelen = 0;
	}
	msg.msg_name = uap->from;
	auio = FUNC6(1, 0,
	    (FUNC1(p) ? UIO_USERSPACE64 : UIO_USERSPACE32),
	    UIO_READ);
	if (auio == NULL) {
		return (ENOMEM);
	}

	FUNC5(auio, uap->buf, uap->len);
	/* no need to set up msg_iov.  recvit uses uio_t we send it */
	msg.msg_iov = 0;
	msg.msg_iovlen = 0;
	msg.msg_control = 0;
	msg.msg_controllen = 0;
	msg.msg_flags = uap->flags;
	error = FUNC4(p, uap->s, &msg, auio, uap->fromlenaddr, retval);
	if (auio != NULL) {
		FUNC7(auio);
	}

	FUNC2(DBG_FNC_RECVFROM | DBG_FUNC_END, error, 0, 0, 0, 0);

	return (error);
}