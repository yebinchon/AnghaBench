
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_tcp_pcb {void* cb_arg; } ;



void uip_tcp_arg(struct uip_tcp_pcb *pcb,void *arg)
{
 pcb->cb_arg = arg;
}
