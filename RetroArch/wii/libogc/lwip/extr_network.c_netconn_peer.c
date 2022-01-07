
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {TYPE_2__* tcp; TYPE_1__* udp; } ;
struct netconn {int type; int err; TYPE_3__ pcb; } ;
struct ip_addr {int dummy; } ;
typedef int err_t ;
struct TYPE_5__ {int remote_port; struct ip_addr remote_ip; } ;
struct TYPE_4__ {int flags; int remote_port; struct ip_addr remote_ip; } ;


 int ERR_CONN ;
 int ERR_OK ;





 int UDP_FLAGS_CONNECTED ;

__attribute__((used)) static err_t netconn_peer(struct netconn *conn,struct ip_addr *addr,u16 *port)
{
 switch(conn->type) {
  case 132:
   return ERR_CONN;
  case 129:
  case 128:
  case 130:
   if(conn->pcb.udp==((void*)0) || ((conn->pcb.udp->flags&UDP_FLAGS_CONNECTED)==0))
    return ERR_CONN;
   *addr = conn->pcb.udp->remote_ip;
   *port = conn->pcb.udp->remote_port;
   break;
  case 131:
   if(conn->pcb.tcp==((void*)0))
    return ERR_CONN;
   *addr = conn->pcb.tcp->remote_ip;
   *port = conn->pcb.tcp->remote_port;
   break;
 }
 return (conn->err = ERR_OK);
}
