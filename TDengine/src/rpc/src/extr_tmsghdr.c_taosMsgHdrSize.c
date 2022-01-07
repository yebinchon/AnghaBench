
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {scalar_t__ msg_iovlen; } ;



int taosMsgHdrSize(void *hdr) {
  struct msghdr *msgHdr = (struct msghdr *)hdr;
  return (int)msgHdr->msg_iovlen;
}
