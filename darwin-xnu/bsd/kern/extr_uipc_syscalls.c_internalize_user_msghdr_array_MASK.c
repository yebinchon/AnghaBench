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
typedef  struct uio* uio_t ;
typedef  scalar_t__ u_int ;
struct user_msghdr_x {scalar_t__ msg_iovlen; scalar_t__ msg_controllen; scalar_t__ msg_control; scalar_t__ msg_namelen; scalar_t__ msg_name; int /*<<< orphan*/  msg_datalen; int /*<<< orphan*/  msg_iov; int /*<<< orphan*/  msg_flags; } ;
struct user_iovec {int dummy; } ;
struct user64_msghdr_x {scalar_t__ msg_iovlen; int /*<<< orphan*/  msg_datalen; int /*<<< orphan*/  msg_flags; scalar_t__ msg_controllen; scalar_t__ msg_control; int /*<<< orphan*/  msg_iov; scalar_t__ msg_namelen; scalar_t__ msg_name; } ;
struct user32_msghdr_x {scalar_t__ msg_iovlen; int /*<<< orphan*/  msg_datalen; int /*<<< orphan*/  msg_flags; scalar_t__ msg_controllen; scalar_t__ msg_control; int /*<<< orphan*/  msg_iov; scalar_t__ msg_namelen; scalar_t__ msg_name; } ;
struct uio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct user_iovec*) ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 scalar_t__ UIO_MAXIOV ; 
 int UIO_USERSPACE64 ; 
 int FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,struct user_iovec*) ; 
 int FUNC2 (struct uio*) ; 
 struct uio* FUNC3 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 struct user_iovec* FUNC4 (struct uio*) ; 
 int /*<<< orphan*/  FUNC5 (struct uio*) ; 

int
FUNC6(const void *src, int spacetype, int direction,
    u_int count, struct user_msghdr_x *dst, struct uio **uiop)
{
	int error = 0;
	u_int i;
	u_int namecnt = 0;
	u_int ctlcnt = 0;

	for (i = 0; i < count; i++) {
		uio_t auio;
		struct user_iovec *iovp;
		struct user_msghdr_x *user_msg = dst + i;

		if (spacetype == UIO_USERSPACE64) {
			const struct user64_msghdr_x *msghdr64;

			msghdr64 = ((const struct user64_msghdr_x *)src) + i;

			user_msg->msg_name = msghdr64->msg_name;
			user_msg->msg_namelen = msghdr64->msg_namelen;
			user_msg->msg_iov = msghdr64->msg_iov;
			user_msg->msg_iovlen = msghdr64->msg_iovlen;
			user_msg->msg_control = msghdr64->msg_control;
			user_msg->msg_controllen = msghdr64->msg_controllen;
			user_msg->msg_flags = msghdr64->msg_flags;
			user_msg->msg_datalen = msghdr64->msg_datalen;
		} else {
			const struct user32_msghdr_x *msghdr32;

			msghdr32 = ((const struct user32_msghdr_x *)src) + i;

			user_msg->msg_name = msghdr32->msg_name;
			user_msg->msg_namelen = msghdr32->msg_namelen;
			user_msg->msg_iov = msghdr32->msg_iov;
			user_msg->msg_iovlen = msghdr32->msg_iovlen;
			user_msg->msg_control = msghdr32->msg_control;
			user_msg->msg_controllen = msghdr32->msg_controllen;
			user_msg->msg_flags = msghdr32->msg_flags;
			user_msg->msg_datalen = msghdr32->msg_datalen;
		}

		if (user_msg->msg_iovlen <= 0 ||
		    user_msg->msg_iovlen > UIO_MAXIOV) {
			error = EMSGSIZE;
			goto done;
		}
		auio = FUNC3(user_msg->msg_iovlen, 0, spacetype,
		    direction);
		if (auio == NULL) {
			error = ENOMEM;
			goto done;
		}
		uiop[i] = auio;

		iovp = FUNC4(auio);
		if (iovp == NULL) {
			error = ENOMEM;
			goto done;
		}
		error = FUNC1(user_msg->msg_iov,
			spacetype, user_msg->msg_iovlen, iovp);
		if (error)
			goto done;
		user_msg->msg_iov = FUNC0(iovp);

		error = FUNC2(auio);
		if (error)
			goto done;
		user_msg->msg_datalen = FUNC5(auio);

		if (user_msg->msg_name && user_msg->msg_namelen)
			namecnt++;
		if (user_msg->msg_control && user_msg->msg_controllen)
			ctlcnt++;
	}
done:

	return (error);
}