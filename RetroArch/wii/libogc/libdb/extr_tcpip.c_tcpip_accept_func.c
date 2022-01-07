
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uip_tcp_pcb {int dummy; } ;
struct tcpip_sock {struct tcpip_sock* next; TYPE_1__* pcb; } ;
typedef int s8_t ;
typedef scalar_t__ s32_t ;
struct TYPE_2__ {int flags; } ;


 int UIP_ERR_ABRT ;
 int UIP_ERR_OK ;
 int UIP_LOG (char*) ;
 int UIP_TF_NODELAY ;
 struct tcpip_sock* tcpip_accepted_sockets ;
 scalar_t__ tcpip_allocsocket (struct uip_tcp_pcb*) ;
 int tcpip_err ;
 struct tcpip_sock* tcpip_getsocket (scalar_t__) ;
 int tcpip_poll ;
 int tcpip_recved ;
 int tcpip_sent ;
 int uip_tcp_arg (struct uip_tcp_pcb*,struct tcpip_sock*) ;
 int uip_tcp_close (struct uip_tcp_pcb*) ;
 int uip_tcp_err (struct uip_tcp_pcb*,int ) ;
 int uip_tcp_poll (struct uip_tcp_pcb*,int ,int) ;
 int uip_tcp_recv (struct uip_tcp_pcb*,int ) ;
 int uip_tcp_sent (struct uip_tcp_pcb*,int ) ;

__attribute__((used)) static s8_t tcpip_accept_func(void *arg,struct uip_tcp_pcb *newpcb,s8_t err)
{
 s32_t s;
 struct tcpip_sock *ptr,*newsock = ((void*)0);
 struct tcpip_sock *sock = (struct tcpip_sock*)arg;

 UIP_LOG("tcpip_accept_func()");
 if(!sock) return UIP_ERR_ABRT;

 s = tcpip_allocsocket(newpcb);
 if(s<0) {
  uip_tcp_close(newpcb);
  return UIP_ERR_ABRT;
 }

 newsock = tcpip_getsocket(s);
 newsock->pcb->flags |= UIP_TF_NODELAY;

 ptr = tcpip_accepted_sockets;
 while(ptr && ptr->next) ptr = ptr->next;
 if(!ptr) tcpip_accepted_sockets = newsock;
 else ptr->next = newsock;

 uip_tcp_arg(newpcb,newsock);
 uip_tcp_recv(newpcb,tcpip_recved);
 uip_tcp_sent(newpcb,tcpip_sent);
 uip_tcp_err(newpcb,tcpip_err);
 uip_tcp_poll(newpcb,tcpip_poll,4);

 return UIP_ERR_OK;
}
