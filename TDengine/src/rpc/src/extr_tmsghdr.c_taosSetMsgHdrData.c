
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msghdr {size_t msg_iovlen; TYPE_1__* msg_iov; } ;
struct TYPE_2__ {char* iov_base; size_t iov_len; } ;



void taosSetMsgHdrData(void *hdr, char *data, int dataLen) {
  struct msghdr *msgHdr = (struct msghdr *)hdr;
  msgHdr->msg_iov[msgHdr->msg_iovlen].iov_base = data;
  msgHdr->msg_iov[msgHdr->msg_iovlen].iov_len = (size_t)dataLen;
  msgHdr->msg_iovlen++;
}
