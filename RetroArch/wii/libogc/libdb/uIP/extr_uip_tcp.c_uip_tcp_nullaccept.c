
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_tcp_pcb {int dummy; } ;
typedef int s8_t ;


 int UIP_ERR_ABRT ;

__attribute__((used)) static s8_t uip_tcp_nullaccept(void *arg,struct uip_tcp_pcb *pcb,s8_t err)
{
 return UIP_ERR_ABRT;
}
