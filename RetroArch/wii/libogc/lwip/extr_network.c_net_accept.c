
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct netsocket {int rcvevt; int conn; } ;
struct netconn {int socket; int callback; } ;
struct ip_addr {int addr; int member_0; } ;
typedef int socklen_t ;
typedef int sin ;
typedef int s32 ;


 int AF_INET ;
 int ENOTSOCK ;
 int LWIP_DEBUGF (int ,char*) ;
 int LWP_SemPost (int ) ;
 int LWP_SemWait (int ) ;
 int SOCKETS_DEBUG ;
 int alloc_socket (struct netconn*) ;
 int evt_callback ;
 struct netsocket* get_socket (int) ;
 int htons (int ) ;
 int memcpy (struct sockaddr*,struct sockaddr_in*,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 struct netconn* netconn_accept (int ) ;
 int netconn_delete (struct netconn*) ;
 int netconn_peer (struct netconn*,struct ip_addr*,int *) ;
 int netsocket_sem ;

s32 net_accept(s32 s,struct sockaddr *addr,socklen_t *addrlen)
{
 struct netsocket *sock;
 struct netconn *newconn;
 struct ip_addr naddr = {0};
 u16 port = 0;
 s32 newsock;
 struct sockaddr_in sin;

 LWIP_DEBUGF(SOCKETS_DEBUG, ("net_accept(%d)\n", s));

 sock = get_socket(s);
 if(!sock) return -ENOTSOCK;

 newconn = netconn_accept(sock->conn);
 netconn_peer(newconn,&naddr,&port);

 memset(&sin,0,sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_port = htons(port);
 sin.sin_addr.s_addr = naddr.addr;

 if(*addrlen>sizeof(sin))
  *addrlen = sizeof(sin);
 memcpy(addr,&sin,*addrlen);

 newsock = alloc_socket(newconn);
 if(newsock==-1) {
  netconn_delete(newconn);
  return -1;
 }

 newconn->callback = evt_callback;
 sock = get_socket(newsock);

 LWP_SemWait(netsocket_sem);
 sock->rcvevt += -1 - newconn->socket;
 newconn->socket = newsock;
 LWP_SemPost(netsocket_sem);

 return newsock;
}
