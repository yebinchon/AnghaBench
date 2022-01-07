
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct msghdr {int msg_namelen; struct msghdr* msg_iov; struct sockaddr_in* msg_name; } ;
struct iovec {int msg_namelen; struct iovec* msg_iov; struct sockaddr_in* msg_name; } ;


 scalar_t__ malloc (size_t) ;
 int memset (struct msghdr*,int ,size_t) ;

void taosInitMsgHdr(void **hdr, void *dest, int maxPkts) {
  struct msghdr *msgHdr = (struct msghdr *)malloc(sizeof(struct msghdr));
  memset(msgHdr, 0, sizeof(struct msghdr));
  *hdr = msgHdr;
  struct sockaddr_in *destAdd = (struct sockaddr_in *)dest;

  msgHdr->msg_name = destAdd;
  msgHdr->msg_namelen = sizeof(struct sockaddr_in);
  int size = (int)sizeof(struct iovec) * maxPkts;
  msgHdr->msg_iov = (struct iovec *)malloc((size_t)size);
  memset(msgHdr->msg_iov, 0, (size_t)size);
}
