
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct sctp_sndrcvinfo {int dummy; } ;
struct msghdr {int msg_iovlen; char* msg_control; int msg_controllen; int msg_flags; int msg_namelen; struct iovec* msg_iov; struct sockaddr* msg_name; int member_0; } ;
struct iovec {size_t iov_len; void* iov_base; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
typedef int socklen_t ;
typedef int incmsg ;


 int CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 int CMSG_SPACE (int) ;
 scalar_t__ IPPROTO_SCTP ;
 scalar_t__ SCTP_SNDRCV ;
 int memcpy (struct sctp_sndrcvinfo*,int ,int) ;
 int recvmsg (int,struct msghdr*,int) ;

__attribute__((used)) static int ff_sctp_recvmsg(int s, void *msg, size_t len, struct sockaddr *from,
                           socklen_t *fromlen, struct sctp_sndrcvinfo *sinfo,
                           int *msg_flags)
{
    int recvb;
    struct iovec iov;
    char incmsg[CMSG_SPACE(sizeof(struct sctp_sndrcvinfo))];
    struct msghdr inmsg = { 0 };
    struct cmsghdr *cmsg = ((void*)0);

    iov.iov_base = msg;
    iov.iov_len = len;

    inmsg.msg_name = from;
    inmsg.msg_namelen = fromlen ? *fromlen : 0;
    inmsg.msg_iov = &iov;
    inmsg.msg_iovlen = 1;
    inmsg.msg_control = incmsg;
    inmsg.msg_controllen = sizeof(incmsg);

    if ((recvb = recvmsg(s, &inmsg, msg_flags ? *msg_flags : 0)) < 0)
        return recvb;

    if (fromlen)
        *fromlen = inmsg.msg_namelen;
    if (msg_flags)
        *msg_flags = inmsg.msg_flags;

    for (cmsg = CMSG_FIRSTHDR(&inmsg); cmsg;
         cmsg = CMSG_NXTHDR(&inmsg, cmsg)) {
        if ((IPPROTO_SCTP == cmsg->cmsg_level) &&
            (SCTP_SNDRCV == cmsg->cmsg_type))
            break;
    }


    if (cmsg)
        memcpy(sinfo, CMSG_DATA(cmsg), sizeof(struct sctp_sndrcvinfo));

    return recvb;
}
