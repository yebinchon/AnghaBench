
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct netsocket {int flags; scalar_t__ lastoffset; struct netbuf* lastdata; int conn; int rcvevt; } ;
struct netbuf {int dummy; } ;
struct ip_addr {int addr; } ;
typedef int socklen_t ;
typedef int sin ;
typedef scalar_t__ s32 ;


 int AF_INET ;
 scalar_t__ EAGAIN ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOTSOCK ;
 int LWIP_DEBUGF (int ,char*) ;
 int MSG_DONTWAIT ;
 scalar_t__ NETCONN_TCP ;
 int O_NONBLOCK ;
 int SOCKETS_DEBUG ;
 struct netsocket* get_socket (scalar_t__) ;
 int htons (scalar_t__) ;
 int ip_addr_debug_print (int ,struct ip_addr*) ;
 int memcpy (struct sockaddr*,struct sockaddr_in*,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int netbuf_copypartial (struct netbuf*,void*,scalar_t__,scalar_t__) ;
 int netbuf_delete (struct netbuf*) ;
 struct ip_addr* netbuf_fromaddr (struct netbuf*) ;
 scalar_t__ netbuf_fromport (struct netbuf*) ;
 scalar_t__ netbuf_len (struct netbuf*) ;
 struct netbuf* netconn_recv (int ) ;
 scalar_t__ netconn_type (int ) ;

s32 net_recvfrom(s32 s,void *mem,s32 len,u32 flags,struct sockaddr *from,socklen_t *fromlen)
{
 struct netsocket *sock;
 struct netbuf *buf;
 u16 buflen,copylen;
 struct ip_addr *addr;
 u16 port;

 LWIP_DEBUGF(SOCKETS_DEBUG, ("net_recvfrom(%d, %p, %d, 0x%x, ..)\n", s, mem, len, flags));
 if(mem==((void*)0) || len<=0) return -EINVAL;

 sock = get_socket(s);
 if(!sock) return -ENOTSOCK;

 if(sock->lastdata)
  buf = sock->lastdata;
 else {
  if(((flags&MSG_DONTWAIT) || (sock->flags&O_NONBLOCK)) && !sock->rcvevt) {
   LWIP_DEBUGF(SOCKETS_DEBUG, ("net_recvfrom(%d): returning EWOULDBLOCK\n", s));
   return -EAGAIN;
  }
  buf = netconn_recv(sock->conn);
  if(!buf) {
      LWIP_DEBUGF(SOCKETS_DEBUG, ("net_recvfrom(%d): buf == NULL!\n", s));
   return 0;
  }
 }

 buflen = netbuf_len(buf);
 buflen -= sock->lastoffset;
 if(buflen<=0)
  return 0;
 if(len>buflen)
  copylen = buflen;
 else
  copylen = len;

 netbuf_copypartial(buf,mem,copylen,sock->lastoffset);

 if(from && fromlen) {
  struct sockaddr_in sin;

  addr = netbuf_fromaddr(buf);
  port = netbuf_fromport(buf);

  memset(&sin,0,sizeof(sin));
  sin.sin_family = AF_INET;
  sin.sin_port = htons(port);
  sin.sin_addr.s_addr = addr->addr;

  if(*fromlen>sizeof(sin))
   *fromlen = sizeof(sin);

  memcpy(from,&sin,*fromlen);

  LWIP_DEBUGF(SOCKETS_DEBUG, ("net_recvfrom(%d): addr=", s));
  ip_addr_debug_print(SOCKETS_DEBUG, addr);
  LWIP_DEBUGF(SOCKETS_DEBUG, (" port=%u len=%u\n", port, copylen));
 }
 if(netconn_type(sock->conn)==NETCONN_TCP && (buflen-copylen)>0) {
  sock->lastdata = buf;
  sock->lastoffset += copylen;
 } else {
  sock->lastdata = ((void*)0);
  sock->lastoffset = 0;
  netbuf_delete(buf);
 }
 return copylen;
}
