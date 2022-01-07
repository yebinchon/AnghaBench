
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uip_tcp_pcb {int dummy; } ;
typedef size_t s32_t ;
struct TYPE_2__ {int sendevt; size_t socket; int err; scalar_t__ flags; scalar_t__ recvevt; scalar_t__ lastoffset; int * lastdata; struct uip_tcp_pcb* pcb; } ;


 int UIP_ERR_OK ;
 size_t UIP_TCPIP_SOCKS ;
 TYPE_1__* tcpip_socks ;

__attribute__((used)) static s32_t tcpip_allocsocket(struct uip_tcp_pcb *pcb)
{
 s32_t i;

 for(i=0;i<UIP_TCPIP_SOCKS;i++) {
  if(tcpip_socks[i].pcb==((void*)0)) {
   tcpip_socks[i].pcb = pcb;
   tcpip_socks[i].lastdata = ((void*)0);
   tcpip_socks[i].lastoffset = 0;
   tcpip_socks[i].recvevt = 0;
   tcpip_socks[i].sendevt = 1;
   tcpip_socks[i].flags = 0;
   tcpip_socks[i].socket = i;
   tcpip_socks[i].err = UIP_ERR_OK;
   return i;
  }
 }
 return -1;
}
