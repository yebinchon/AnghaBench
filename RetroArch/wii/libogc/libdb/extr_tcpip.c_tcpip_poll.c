
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_tcp_pcb {int dummy; } ;
typedef int s8_t ;


 int UIP_ERR_OK ;
 int UIP_LOG (char*) ;

__attribute__((used)) static s8_t tcpip_poll(void *arg,struct uip_tcp_pcb *pcb)
{
 UIP_LOG("tcpip_poll()");
 return UIP_ERR_OK;
}
