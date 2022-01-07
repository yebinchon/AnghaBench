
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netsocket {int conn; } ;
typedef int s32 ;
typedef scalar_t__ err_t ;


 int ENOTSOCK ;
 scalar_t__ ERR_OK ;
 int LWIP_DEBUGF (int ,char*) ;
 int SOCKETS_DEBUG ;
 struct netsocket* get_socket (int) ;
 scalar_t__ netconn_listen (int ) ;

s32 net_listen(s32 s,u32 backlog)
{
 struct netsocket *sock;
 err_t err;

 LWIP_DEBUGF(SOCKETS_DEBUG, ("net_listen(%d, backlog=%d)\n", s, backlog));
 sock = get_socket(s);
 if(!sock) return -ENOTSOCK;

 err = netconn_listen(sock->conn);
 if(err!=ERR_OK) {
     LWIP_DEBUGF(SOCKETS_DEBUG, ("net_listen(%d) failed, err=%d\n", s, err));
  return -1;
 }
 return 0;
}
