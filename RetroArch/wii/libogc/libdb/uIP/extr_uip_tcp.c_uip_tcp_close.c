
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uip_tcp_pcb {int state; } ;
typedef scalar_t__ s8_t ;
struct TYPE_2__ {int pcbs; } ;




 scalar_t__ UIP_ERR_OK ;

 int UIP_FIN_WAIT_1 ;
 int UIP_LAST_ACK ;



 int UIP_TCP_FIN ;
 int memb_free (int *,struct uip_tcp_pcb*) ;
 int uip_listen_tcp_pcbs ;
 struct uip_tcp_pcb* uip_tcp_active_pcbs ;
 TYPE_1__ uip_tcp_listen_pcbs ;
 int uip_tcp_pcbremove (struct uip_tcp_pcb**,struct uip_tcp_pcb*) ;
 int uip_tcp_pcbs ;
 scalar_t__ uip_tcp_sendctrl (struct uip_tcp_pcb*,int ) ;
 int uip_tcpoutput (struct uip_tcp_pcb*) ;

s8_t uip_tcp_close(struct uip_tcp_pcb *pcb)
{
 s8_t err;

 switch(pcb->state) {
  case 133:
   err = UIP_ERR_OK;
   memb_free(&uip_tcp_pcbs,pcb);
   pcb = ((void*)0);
   break;
  case 130:
   err = UIP_ERR_OK;
   uip_tcp_pcbremove((struct uip_tcp_pcb**)&uip_tcp_listen_pcbs.pcbs,pcb);
   memb_free(&uip_listen_tcp_pcbs,pcb);
   pcb = ((void*)0);
   break;
  case 128:
   err = UIP_ERR_OK;
   uip_tcp_pcbremove(&uip_tcp_active_pcbs,pcb);
   memb_free(&uip_tcp_pcbs,pcb);
   pcb = ((void*)0);
   break;
  case 129:
  case 131:
   err = uip_tcp_sendctrl(pcb,UIP_TCP_FIN);
   if(err==UIP_ERR_OK) pcb->state = UIP_FIN_WAIT_1;
   break;
  case 132:
   err = uip_tcp_sendctrl(pcb,UIP_TCP_FIN);
   if(err==UIP_ERR_OK) pcb->state = UIP_LAST_ACK;
   break;
  default:
   err = UIP_ERR_OK;
   pcb = ((void*)0);
   break;
 }
 if(pcb!=((void*)0) && err==UIP_ERR_OK) uip_tcpoutput(pcb);

 return err;
}
