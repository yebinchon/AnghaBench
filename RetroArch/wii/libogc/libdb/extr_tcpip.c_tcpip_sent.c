
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct uip_tcp_pcb {int dummy; } ;
typedef int s8_t ;


 int UIP_ERR_OK ;

__attribute__((used)) static s8_t tcpip_sent(void *arg,struct uip_tcp_pcb *pcb,u16_t space)
{

 return UIP_ERR_OK;
}
