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
typedef  scalar_t__ u_int ;
struct user_msghdr_x {scalar_t__ msg_iovlen; scalar_t__ msg_controllen; scalar_t__ msg_control; scalar_t__ msg_namelen; scalar_t__ msg_name; int /*<<< orphan*/  msg_datalen; int /*<<< orphan*/  msg_iov; int /*<<< orphan*/  msg_flags; } ;
struct user_iovec {int dummy; } ;
struct user64_msghdr_x {scalar_t__ msg_iovlen; int /*<<< orphan*/  msg_datalen; int /*<<< orphan*/  msg_flags; scalar_t__ msg_controllen; scalar_t__ msg_control; int /*<<< orphan*/  msg_iov; scalar_t__ msg_namelen; scalar_t__ msg_name; } ;
struct user32_msghdr_x {scalar_t__ msg_iovlen; int /*<<< orphan*/  msg_datalen; int /*<<< orphan*/  msg_flags; scalar_t__ msg_controllen; scalar_t__ msg_control; int /*<<< orphan*/  msg_iov; scalar_t__ msg_namelen; scalar_t__ msg_name; } ;
struct recv_msg_elem {int /*<<< orphan*/  which; int /*<<< orphan*/ * uio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct user_iovec*) ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SOCK_MSG_CONTROL ; 
 int /*<<< orphan*/  SOCK_MSG_SA ; 
 scalar_t__ UIO_MAXIOV ; 
 int UIO_USERSPACE64 ; 
 int FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,struct user_iovec*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 struct user_iovec* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(const void *src, int spacetype, int direction,
    u_int count, struct user_msghdr_x *dst,
    struct recv_msg_elem *recv_msg_array)
{
	int error = 0;
	u_int i;

	for (i = 0; i < count; i++) {
		struct user_iovec *iovp;
		struct user_msghdr_x *user_msg = dst + i;
		struct recv_msg_elem *recv_msg_elem = recv_msg_array + i;

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
		recv_msg_elem->uio = FUNC3(user_msg->msg_iovlen, 0,
		    spacetype, direction);
		if (recv_msg_elem->uio == NULL) {
			error = ENOMEM;
			goto done;
		}

		iovp = FUNC4(recv_msg_elem->uio);
		if (iovp == NULL) {
			error = ENOMEM;
			goto done;
		}
		error = FUNC1(user_msg->msg_iov,
			spacetype, user_msg->msg_iovlen, iovp);
		if (error)
			goto done;
		user_msg->msg_iov = FUNC0(iovp);

		error = FUNC2(recv_msg_elem->uio);
		if (error)
			goto done;
		user_msg->msg_datalen = FUNC5(recv_msg_elem->uio);

		if (user_msg->msg_name && user_msg->msg_namelen)
			recv_msg_elem->which |= SOCK_MSG_SA;
		if (user_msg->msg_control && user_msg->msg_controllen)
			recv_msg_elem->which |= SOCK_MSG_CONTROL;
	}
done:

	return (error);
}