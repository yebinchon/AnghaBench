
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_tcp_pcb {int dummy; } ;
struct tcpip_sock {int dummy; } ;
typedef int s32_t ;


 int tcpip_allocsocket (struct uip_tcp_pcb*) ;
 struct tcpip_sock* tcpip_getsocket (int) ;
 int uip_tcp_arg (struct uip_tcp_pcb*,struct tcpip_sock*) ;
 int uip_tcp_close (struct uip_tcp_pcb*) ;
 struct uip_tcp_pcb* uip_tcp_new () ;

s32_t tcpip_socket()
{
 s32_t s;
 struct tcpip_sock *sock;
 struct uip_tcp_pcb *pcb;

 pcb = uip_tcp_new();
 if(!pcb) return -1;

 s = tcpip_allocsocket(pcb);
 if(s<0) {
  uip_tcp_close(pcb);
  return -1;
 }

 sock = tcpip_getsocket(s);
 uip_tcp_arg(pcb,sock);

 return s;
}
