
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct uip_tcp_pcb {int dummy; } ;
struct uip_pbuf {int tot_len; } ;
struct tcpip_sock {struct uip_pbuf* lastdata; } ;
typedef int s8_t ;


 int UIP_ERR_OK ;
 int UIP_ERR_VAL ;
 int uip_pbuf_free (struct uip_pbuf*) ;
 int uip_pbuf_queue (struct uip_pbuf*,struct uip_pbuf*) ;
 int uip_tcp_recved (struct uip_tcp_pcb*,int) ;

__attribute__((used)) static s8_t tcpip_recved(void *arg,struct uip_tcp_pcb *pcb,struct uip_pbuf *p,s8_t err)
{
 u16_t len;
 struct tcpip_sock *sock = (struct tcpip_sock*)arg;


 if(!sock) {
  uip_pbuf_free(p);
  return UIP_ERR_VAL;
 }

 if(p) {
  len = p->tot_len;
  if(sock->lastdata==((void*)0)) {
   sock->lastdata = p;
  } else {




   uip_pbuf_queue(sock->lastdata,p);
  }
 } else
  len = 1;

 uip_tcp_recved(pcb,len);
 return UIP_ERR_OK;
}
