
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {scalar_t__ msg_iovlen; } ;


 int sendmsg (int,struct msghdr*,int ) ;

void taosSendMsgHdr(void *hdr, int fd) {
  struct msghdr *msgHdr = (struct msghdr *)hdr;
  sendmsg(fd, msgHdr, 0);
  msgHdr->msg_iovlen = 0;
}
