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
struct msghdr {scalar_t__ msg_iovlen; int /*<<< orphan*/ * msg_iov; } ;
typedef  int /*<<< orphan*/  socket_t ;
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct msghdr const*,int /*<<< orphan*/ *,int,size_t*) ; 

errno_t
FUNC2(socket_t sock, const struct msghdr *msg, mbuf_t data,
    int	flags, size_t *sentlen)
{
	if (data == NULL || (msg != NULL && (msg->msg_iov != NULL ||
	    msg->msg_iovlen != 0))) {
		if (data != NULL)
			FUNC0(data);
		return (EINVAL);
	}
	return (FUNC1(sock, msg, data, flags, sentlen));
}