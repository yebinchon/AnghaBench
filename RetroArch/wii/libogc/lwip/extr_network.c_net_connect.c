
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; int sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct netsocket {int conn; } ;
struct ip_addr {int addr; } ;
typedef int socklen_t ;
typedef int s32 ;
typedef scalar_t__ err_t ;


 scalar_t__ AF_UNSPEC ;
 int EISCONN ;
 int ENOTSOCK ;
 scalar_t__ ERR_OK ;
 int LWIP_DEBUGF (int ,char*) ;
 int SOCKETS_DEBUG ;
 struct netsocket* get_socket (int) ;
 int ip_addr_debug_print (int ,struct ip_addr*) ;
 scalar_t__ netconn_connect (int ,struct ip_addr*,int ) ;
 scalar_t__ netconn_disconnect (int ) ;
 int ntohs (int ) ;

s32 net_connect(s32 s,struct sockaddr *name,socklen_t namelen)
{
 struct netsocket *sock;
 err_t err;

 sock = get_socket(s);
 if(!sock) return -ENOTSOCK;

 if(((struct sockaddr_in*)name)->sin_family==AF_UNSPEC) {
     LWIP_DEBUGF(SOCKETS_DEBUG, ("net_connect(%d, AF_UNSPEC)\n", s));
  err = netconn_disconnect(sock->conn);
 } else {
  struct ip_addr remote_addr;
  u16 remote_port;

  remote_addr.addr = ((struct sockaddr_in*)name)->sin_addr.s_addr;
  remote_port = ((struct sockaddr_in*)name)->sin_port;

  LWIP_DEBUGF(SOCKETS_DEBUG, ("net_connect(%d, addr=", s));
  ip_addr_debug_print(SOCKETS_DEBUG, &remote_addr);
  LWIP_DEBUGF(SOCKETS_DEBUG, (" port=%u)\n", ntohs(remote_port)));

  err = netconn_connect(sock->conn,&remote_addr,ntohs(remote_port));
 }
 if(err!=ERR_OK) {
     LWIP_DEBUGF(SOCKETS_DEBUG, ("net_connect(%d) failed, err=%d\n", s, err));
  return -1;
 }

 LWIP_DEBUGF(SOCKETS_DEBUG, ("net_connect(%d) succeeded\n", s));
 return -EISCONN;
}
