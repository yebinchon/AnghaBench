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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/ * uio_t ;
struct user_msghdr {scalar_t__ msg_iovlen; int /*<<< orphan*/  msg_name; int /*<<< orphan*/  msg_namelen; int /*<<< orphan*/  msg_iov; int /*<<< orphan*/  msg_control; int /*<<< orphan*/  msg_controllen; int /*<<< orphan*/  msg_flags; } ;
struct user_iovec {int dummy; } ;
struct user64_msghdr {scalar_t__ msg_iovlen; int /*<<< orphan*/  msg_name; int /*<<< orphan*/  msg_namelen; int /*<<< orphan*/  msg_iov; int /*<<< orphan*/  msg_control; int /*<<< orphan*/  msg_controllen; int /*<<< orphan*/  msg_flags; } ;
struct user32_msghdr {scalar_t__ msg_iovlen; int /*<<< orphan*/  msg_name; int /*<<< orphan*/  msg_namelen; int /*<<< orphan*/  msg_iov; int /*<<< orphan*/  msg_control; int /*<<< orphan*/  msg_controllen; int /*<<< orphan*/  msg_flags; } ;
struct recvmsg_nocancel_args {int /*<<< orphan*/  msg; int /*<<< orphan*/  s; int /*<<< orphan*/  flags; } ;
struct proc {int dummy; } ;
typedef  int /*<<< orphan*/  msg64 ;
typedef  int /*<<< orphan*/  msg32 ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct user_iovec*) ; 
 int DBG_FNC_RECVMSG ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 scalar_t__ FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ UIO_MAXIOV ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_USERSPACE32 ; 
 int /*<<< orphan*/  UIO_USERSPACE64 ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct user_iovec*) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fd ; 
 int FUNC7 (struct proc*,int /*<<< orphan*/ ,struct user_msghdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct user_iovec* FUNC11 (int /*<<< orphan*/ *) ; 

int
FUNC12(struct proc *p, struct recvmsg_nocancel_args *uap,
    int32_t *retval)
{
	struct user32_msghdr msg32;
	struct user64_msghdr msg64;
	struct user_msghdr user_msg;
	caddr_t msghdrp;
	int	size_of_msghdr;
	user_addr_t uiov;
	int error;
	uio_t auio = NULL;
	struct user_iovec *iovp;

	FUNC3(DBG_FNC_RECVMSG | DBG_FUNC_START, 0, 0, 0, 0, 0);
	FUNC0(fd, uap->s);
	if (FUNC2(p)) {
		msghdrp = (caddr_t)&msg64;
		size_of_msghdr = sizeof (msg64);
	} else {
		msghdrp = (caddr_t)&msg32;
		size_of_msghdr = sizeof (msg32);
	}
	error = FUNC4(uap->msg, msghdrp, size_of_msghdr);
	if (error) {
		FUNC3(DBG_FNC_RECVMSG | DBG_FUNC_END, error, 0, 0, 0, 0);
		return (error);
	}

	/* only need to copy if user process is not 64-bit */
	if (FUNC2(p)) {
		user_msg.msg_flags = msg64.msg_flags;
		user_msg.msg_controllen = msg64.msg_controllen;
		user_msg.msg_control = msg64.msg_control;
		user_msg.msg_iovlen = msg64.msg_iovlen;
		user_msg.msg_iov = msg64.msg_iov;
		user_msg.msg_namelen = msg64.msg_namelen;
		user_msg.msg_name = msg64.msg_name;
	} else {
		user_msg.msg_flags = msg32.msg_flags;
		user_msg.msg_controllen = msg32.msg_controllen;
		user_msg.msg_control = msg32.msg_control;
		user_msg.msg_iovlen = msg32.msg_iovlen;
		user_msg.msg_iov = msg32.msg_iov;
		user_msg.msg_namelen = msg32.msg_namelen;
		user_msg.msg_name = msg32.msg_name;
	}

	if (user_msg.msg_iovlen <= 0 || user_msg.msg_iovlen > UIO_MAXIOV) {
		FUNC3(DBG_FNC_RECVMSG | DBG_FUNC_END, EMSGSIZE,
		    0, 0, 0, 0);
		return (EMSGSIZE);
	}

	user_msg.msg_flags = uap->flags;

	/* allocate a uio large enough to hold the number of iovecs passed */
	auio = FUNC9(user_msg.msg_iovlen, 0,
	    (FUNC2(p) ? UIO_USERSPACE64 : UIO_USERSPACE32),
	    UIO_READ);
	if (auio == NULL) {
		error = ENOMEM;
		goto done;
	}

	/*
	 * get location of iovecs within the uio.  then copyin the iovecs from
	 * user space.
	 */
	iovp = FUNC11(auio);
	if (iovp == NULL) {
		error = ENOMEM;
		goto done;
	}
	uiov = user_msg.msg_iov;
	user_msg.msg_iov = FUNC1(iovp);
	error = FUNC5(uiov,
		FUNC2(p) ? UIO_USERSPACE64 : UIO_USERSPACE32,
		user_msg.msg_iovlen, iovp);
	if (error)
		goto done;

	/* finish setup of uio_t */
	error = FUNC8(auio);
	if (error) {
		goto done;
	}

	error = FUNC7(p, uap->s, &user_msg, auio, 0, retval);
	if (!error) {
		user_msg.msg_iov = uiov;
		if (FUNC2(p)) {
			msg64.msg_flags = user_msg.msg_flags;
			msg64.msg_controllen = user_msg.msg_controllen;
			msg64.msg_control = user_msg.msg_control;
			msg64.msg_iovlen = user_msg.msg_iovlen;
			msg64.msg_iov = user_msg.msg_iov;
			msg64.msg_namelen = user_msg.msg_namelen;
			msg64.msg_name = user_msg.msg_name;
		} else {
			msg32.msg_flags = user_msg.msg_flags;
			msg32.msg_controllen = user_msg.msg_controllen;
			msg32.msg_control = user_msg.msg_control;
			msg32.msg_iovlen = user_msg.msg_iovlen;
			msg32.msg_iov = user_msg.msg_iov;
			msg32.msg_namelen = user_msg.msg_namelen;
			msg32.msg_name = user_msg.msg_name;
		}
		error = FUNC6(msghdrp, uap->msg, size_of_msghdr);
	}
done:
	if (auio != NULL) {
		FUNC10(auio);
	}
	FUNC3(DBG_FNC_RECVMSG | DBG_FUNC_END, error, 0, 0, 0, 0);
	return (error);
}