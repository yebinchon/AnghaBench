
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int msg_iov; } ;


 int free (int ) ;

void taosFreeMsgHdr(void *hdr) {
  struct msghdr *msgHdr = (struct msghdr *)hdr;
  free(msgHdr->msg_iov);
}
