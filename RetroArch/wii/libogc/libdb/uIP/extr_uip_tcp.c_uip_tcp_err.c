
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_tcp_pcb {void (* errf ) (void*,s8_t) ;} ;



void uip_tcp_err(struct uip_tcp_pcb *pcb,void (*errf)(void *,s8_t))
{
 pcb->errf = errf;
}
