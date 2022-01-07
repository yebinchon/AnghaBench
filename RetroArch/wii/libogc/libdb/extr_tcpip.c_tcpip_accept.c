
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpip_sock {int dummy; } ;
typedef int s32_t ;
struct TYPE_2__ {int socket; struct TYPE_2__* next; } ;


 int __tcpip_poll () ;
 TYPE_1__* tcpip_accepted_sockets ;
 struct tcpip_sock* tcpip_getsocket (int) ;

s32_t tcpip_accept(s32_t s)
{
 s32_t newsock = -1;
 struct tcpip_sock *sock;

 sock = tcpip_getsocket(s);
 if(sock==((void*)0)) return -1;

 do {
  __tcpip_poll();
 } while(!tcpip_accepted_sockets);

 newsock = tcpip_accepted_sockets->socket;
 tcpip_accepted_sockets = tcpip_accepted_sockets->next;

 return newsock;
}
