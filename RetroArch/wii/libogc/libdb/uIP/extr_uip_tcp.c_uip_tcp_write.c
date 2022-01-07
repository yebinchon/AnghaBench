
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef scalar_t__ u16_t ;
struct uip_tcp_pcb {scalar_t__ state; } ;
typedef int s8_t ;


 scalar_t__ UIP_CLOSE_WAIT ;
 int UIP_ERR_CONN ;
 int UIP_ERR_OK ;
 scalar_t__ UIP_ESTABLISHED ;
 scalar_t__ UIP_SYN_RCVD ;
 scalar_t__ UIP_SYN_SENT ;
 int uip_tcpenqueue (struct uip_tcp_pcb*,void*,scalar_t__,int ,int ,int *,int ) ;

s8_t uip_tcp_write(struct uip_tcp_pcb *pcb,const void *arg,u16_t len,u8_t copy)
{
 if(pcb->state==UIP_ESTABLISHED || pcb->state==UIP_CLOSE_WAIT ||
  pcb->state==UIP_SYN_SENT || pcb->state==UIP_SYN_RCVD) {
  if(len>0) {
   return uip_tcpenqueue(pcb,(void*)arg,len,0,copy,((void*)0),0);
  }
  return UIP_ERR_OK;
 }
 return UIP_ERR_CONN;
}
