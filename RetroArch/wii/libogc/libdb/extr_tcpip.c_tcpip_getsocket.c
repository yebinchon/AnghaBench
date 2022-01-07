
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpip_sock {int pcb; } ;
typedef size_t s32_t ;


 size_t UIP_TCPIP_SOCKS ;
 struct tcpip_sock* tcpip_socks ;

__attribute__((used)) static struct tcpip_sock* tcpip_getsocket(s32_t s)
{
 struct tcpip_sock *sock;

 if(s<0 || s>=UIP_TCPIP_SOCKS) return ((void*)0);

 sock = &tcpip_socks[s];
 if(!sock->pcb) return ((void*)0);

 return sock;
}
