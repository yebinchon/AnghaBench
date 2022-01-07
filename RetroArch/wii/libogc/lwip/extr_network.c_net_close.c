
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netsocket {int * conn; scalar_t__ lastoffset; int * lastdata; } ;
typedef int s32 ;


 int ENOTSOCK ;
 int LWIP_DEBUGF (int ,char*) ;
 int LWP_SemPost (int ) ;
 int LWP_SemWait (int ) ;
 int SOCKETS_DEBUG ;
 struct netsocket* get_socket (int ) ;
 int netbuf_delete (int *) ;
 int netconn_delete (int *) ;
 int netsocket_sem ;

s32 net_close(s32 s)
{
 struct netsocket *sock;

 LWIP_DEBUGF(SOCKETS_DEBUG, ("net_close(%d)\n", s));

 LWP_SemWait(netsocket_sem);

 sock = get_socket(s);
 if(!sock) {
  LWP_SemPost(netsocket_sem);
  return -ENOTSOCK;
 }

 netconn_delete(sock->conn);
 if(sock->lastdata) netbuf_delete(sock->lastdata);

 sock->lastdata = ((void*)0);
 sock->lastoffset = 0;
 sock->conn = ((void*)0);

 LWP_SemPost(netsocket_sem);
 return 0;
}
