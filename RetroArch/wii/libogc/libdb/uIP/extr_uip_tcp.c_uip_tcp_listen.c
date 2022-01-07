
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uip_tcp_pcb_listen {int accept; int local_ip; int tos; int ttl; int so_options; scalar_t__ state; int local_port; int cb_arg; } ;
struct uip_tcp_pcb {scalar_t__ state; int local_ip; int tos; int ttl; int so_options; int local_port; int cb_arg; } ;
struct TYPE_2__ {int listen_pcbs; } ;


 scalar_t__ UIP_LISTEN ;
 int UIP_SOF_ACCEPTCONN ;
 int UIP_TCP_REG (int *,struct uip_tcp_pcb_listen*) ;
 int ip_addr_set (int *,int *) ;
 struct uip_tcp_pcb_listen* memb_alloc (int *) ;
 int memb_free (int *,struct uip_tcp_pcb*) ;
 int uip_listen_tcp_pcbs ;
 TYPE_1__ uip_tcp_listen_pcbs ;
 int uip_tcp_nullaccept ;
 int uip_tcp_pcbs ;

struct uip_tcp_pcb* uip_tcp_listen(struct uip_tcp_pcb *pcb)
{
 struct uip_tcp_pcb_listen *lpcb;

 if(pcb->state==UIP_LISTEN) return pcb;

 lpcb = memb_alloc(&uip_listen_tcp_pcbs);
 if(lpcb==((void*)0)) return ((void*)0);

 lpcb->cb_arg = pcb->cb_arg;
 lpcb->local_port = pcb->local_port;
 lpcb->state = UIP_LISTEN;
 lpcb->so_options = pcb->so_options;
 lpcb->so_options |= UIP_SOF_ACCEPTCONN;
 lpcb->ttl = pcb->ttl;
 lpcb->tos = pcb->tos;
 ip_addr_set(&lpcb->local_ip,&pcb->local_ip);

 memb_free(&uip_tcp_pcbs,pcb);

 lpcb->accept = uip_tcp_nullaccept;

 UIP_TCP_REG(&uip_tcp_listen_pcbs.listen_pcbs,lpcb);
 return (struct uip_tcp_pcb*)lpcb;
}
