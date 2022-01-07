
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_sndrcvinfo {int dummy; } ;
struct msghdr {int msg_iovlen; int msg_controllen; char* msg_control; scalar_t__ msg_flags; struct iovec* msg_iov; scalar_t__ msg_namelen; int * msg_name; int member_0; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
struct cmsghdr {int cmsg_len; int cmsg_type; int cmsg_level; } ;
typedef int outcmsg ;


 int CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 int CMSG_LEN (int) ;
 int CMSG_SPACE (int) ;
 int IPPROTO_SCTP ;
 int MSG_NOSIGNAL ;
 int SCTP_SNDRCV ;
 int memcpy (int ,struct sctp_sndrcvinfo const*,int) ;
 int sendmsg (int,struct msghdr*,int) ;

__attribute__((used)) static int ff_sctp_send(int s, const void *msg, size_t len,
                        const struct sctp_sndrcvinfo *sinfo, int flags)
{
    struct msghdr outmsg = { 0 };
    struct iovec iov;

    outmsg.msg_name = ((void*)0);
    outmsg.msg_namelen = 0;
    outmsg.msg_iov = &iov;
    iov.iov_base = (void*)msg;
    iov.iov_len = len;
    outmsg.msg_iovlen = 1;
    outmsg.msg_controllen = 0;

    if (sinfo) {
        char outcmsg[CMSG_SPACE(sizeof(struct sctp_sndrcvinfo))];
        struct cmsghdr *cmsg;

        outmsg.msg_control = outcmsg;
        outmsg.msg_controllen = sizeof(outcmsg);
        outmsg.msg_flags = 0;

        cmsg = CMSG_FIRSTHDR(&outmsg);
        cmsg->cmsg_level = IPPROTO_SCTP;
        cmsg->cmsg_type = SCTP_SNDRCV;
        cmsg->cmsg_len = CMSG_LEN(sizeof(struct sctp_sndrcvinfo));

        outmsg.msg_controllen = cmsg->cmsg_len;
        memcpy(CMSG_DATA(cmsg), sinfo, sizeof(struct sctp_sndrcvinfo));
    }

    return sendmsg(s, &outmsg, flags | MSG_NOSIGNAL);
}
