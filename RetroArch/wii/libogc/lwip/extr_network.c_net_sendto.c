
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16_t ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct netsocket {int conn; } ;
struct ip_addr {int addr; } ;
typedef int socklen_t ;
typedef scalar_t__ s32 ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOTSOCK ;
 scalar_t__ ERR_OK ;
 int LWIP_DEBUGF (int ,char*) ;
 int SOCKETS_DEBUG ;
 struct netsocket* get_socket (scalar_t__) ;
 int ip_addr_debug_print (int ,struct ip_addr*) ;
 scalar_t__ net_send (scalar_t__,void const*,scalar_t__,int ) ;
 int netconn_connect (int ,struct ip_addr*,int ) ;
 int netconn_disconnect (int ) ;
 scalar_t__ netconn_peer (int ,struct ip_addr*,int *) ;
 int ntohs (int ) ;

s32 net_sendto(s32 s,const void *data,s32 len,u32 flags,struct sockaddr *to,socklen_t tolen)
{
 struct netsocket *sock;
 struct ip_addr remote_addr, addr;
 u16_t remote_port, port = 0;
 s32 ret,connected;

 LWIP_DEBUGF(SOCKETS_DEBUG, ("net_sendto(%d, data=%p, size=%d, flags=0x%x)\n", s, data, len, flags));
 if(data==((void*)0) || len<=0) return -EINVAL;

 sock = get_socket(s);
 if (!sock) return -ENOTSOCK;


 connected = (netconn_peer(sock->conn, &addr, &port) == ERR_OK);

 remote_addr.addr = ((struct sockaddr_in *)to)->sin_addr.s_addr;
 remote_port = ((struct sockaddr_in *)to)->sin_port;

 LWIP_DEBUGF(SOCKETS_DEBUG, ("net_sendto(%d, data=%p, size=%d, flags=0x%x to=", s, data, len, flags));
 ip_addr_debug_print(SOCKETS_DEBUG, &remote_addr);
 LWIP_DEBUGF(SOCKETS_DEBUG, (" port=%u\n", ntohs(remote_port)));

 netconn_connect(sock->conn, &remote_addr, ntohs(remote_port));

 ret = net_send(s, data, len, flags);



 if (connected)
  netconn_connect(sock->conn, &addr, port);
 else
  netconn_disconnect(sock->conn);
 return ret;
}
