
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;
struct tcpip_sock {int * pcb; } ;
typedef int s32_t ;


 int tcpip_accept_func ;
 struct tcpip_sock* tcpip_getsocket (int) ;
 int uip_tcp_accept (int *,int ) ;
 int * uip_tcp_listen (int *) ;

s32_t tcpip_listen(s32_t s,u32_t backlog)
{
 struct tcpip_sock *sock;

 sock = tcpip_getsocket(s);
 if(!sock) return -1;

 sock->pcb = uip_tcp_listen(sock->pcb);
 if(sock->pcb==((void*)0)) return -1;

 uip_tcp_accept(sock->pcb,tcpip_accept_func);

 return 0;
}
