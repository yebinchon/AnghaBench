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
struct sctp_sndrcvinfo {int dummy; } ;
struct msghdr {int msg_iovlen; int msg_controllen; char* msg_control; scalar_t__ msg_flags; struct iovec* msg_iov; scalar_t__ msg_namelen; int /*<<< orphan*/ * msg_name; int /*<<< orphan*/  member_0; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
struct cmsghdr {int cmsg_len; int /*<<< orphan*/  cmsg_type; int /*<<< orphan*/  cmsg_level; } ;
typedef  int /*<<< orphan*/  outcmsg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  IPPROTO_SCTP ; 
 int MSG_NOSIGNAL ; 
 int /*<<< orphan*/  SCTP_SNDRCV ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sctp_sndrcvinfo const*,int) ; 
 int FUNC5 (int,struct msghdr*,int) ; 

__attribute__((used)) static int FUNC6(int s, const void *msg, size_t len,
                        const struct sctp_sndrcvinfo *sinfo, int flags)
{
    struct msghdr outmsg = { 0 };
    struct iovec iov;

    outmsg.msg_name       = NULL;
    outmsg.msg_namelen    = 0;
    outmsg.msg_iov        = &iov;
    iov.iov_base          = (void*)msg;
    iov.iov_len           = len;
    outmsg.msg_iovlen     = 1;
    outmsg.msg_controllen = 0;

    if (sinfo) {
        char outcmsg[FUNC3(sizeof(struct sctp_sndrcvinfo))];
        struct cmsghdr *cmsg;

        outmsg.msg_control    = outcmsg;
        outmsg.msg_controllen = sizeof(outcmsg);
        outmsg.msg_flags      = 0;

        cmsg             = FUNC1(&outmsg);
        cmsg->cmsg_level = IPPROTO_SCTP;
        cmsg->cmsg_type  = SCTP_SNDRCV;
        cmsg->cmsg_len   = FUNC2(sizeof(struct sctp_sndrcvinfo));

        outmsg.msg_controllen = cmsg->cmsg_len;
        FUNC4(FUNC0(cmsg), sinfo, sizeof(struct sctp_sndrcvinfo));
    }

    return FUNC5(s, &outmsg, flags | MSG_NOSIGNAL);
}