
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16_t ;
struct uip_ip_addr {int addr; } ;
struct tcpip_sock {int pcb; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int s8_t ;
typedef int s32_t ;


 struct tcpip_sock* tcpip_getsocket (int) ;
 int uip_tcp_bind (int ,struct uip_ip_addr*,int ) ;

s32_t tcpip_bind(s32_t s,struct sockaddr *name,socklen_t *namelen)
{
 struct tcpip_sock *sock;
 struct uip_ip_addr local_ip;
 u16_t local_port;
 s8_t err;

 sock = tcpip_getsocket(s);
 if(!sock) return -1;

 local_ip.addr = ((struct sockaddr_in*)name)->sin_addr.s_addr;
 local_port = ((struct sockaddr_in*)name)->sin_port;

 err = uip_tcp_bind(sock->pcb,&local_ip,local_port);

 return (s32_t)err;
}
