
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpip_sock {int * pcb; } ;
typedef int s32_t ;


 struct tcpip_sock* tcpip_getsocket (int ) ;
 int uip_tcp_close (int *) ;

void tcpip_close(s32_t s)
{
 struct tcpip_sock *sock;

 sock = tcpip_getsocket(s);
 if(sock==((void*)0)) return;

 uip_tcp_close(sock->pcb);
 sock->pcb = ((void*)0);
}
