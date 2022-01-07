
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct uip_tcp_pcb {int dummy; } ;
typedef int s8_t ;


 int uip_tcpenqueue (struct uip_tcp_pcb*,int *,int ,int ,int,int *,int ) ;

s8_t uip_tcp_sendctrl(struct uip_tcp_pcb *pcb,u8_t flags)
{
 return uip_tcpenqueue(pcb,((void*)0),0,flags,1,((void*)0),0);
}
