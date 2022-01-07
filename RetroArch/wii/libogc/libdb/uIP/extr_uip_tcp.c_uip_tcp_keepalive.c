
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_tcp_pcb {int ttl; int remote_ip; int local_ip; int rcv_wnd; scalar_t__ rcv_nxt; scalar_t__ snd_nxt; int remote_port; int local_port; } ;
struct uip_tcp_hdr {scalar_t__ chksum; scalar_t__ urgp; void* wnd; void* ackno; void* seqno; void* dst; void* src; } ;
struct uip_pbuf {int tot_len; struct uip_tcp_hdr* payload; } ;


 int UIP_PBUF_IP ;
 int UIP_PBUF_RAM ;
 int UIP_PROTO_TCP ;
 int UIP_TCPH_HDRLEN_SET (struct uip_tcp_hdr*,int) ;
 int UIP_TCP_HLEN ;
 void* htonl (scalar_t__) ;
 void* htons (int ) ;
 scalar_t__ uip_chksum_pseudo (struct uip_pbuf*,int *,int *,int ,int ) ;
 int uip_ipoutput (struct uip_pbuf*,int *,int *,int ,int ,int ) ;
 struct uip_pbuf* uip_pbuf_alloc (int ,int ,int ) ;
 int uip_pbuf_free (struct uip_pbuf*) ;

void uip_tcp_keepalive(struct uip_tcp_pcb *pcb)
{
 struct uip_pbuf *p;
 struct uip_tcp_hdr *tcphdr;

 p = uip_pbuf_alloc(UIP_PBUF_IP,UIP_TCP_HLEN,UIP_PBUF_RAM);
 if(p==((void*)0)) return;

 tcphdr = p->payload;
 tcphdr->src = htons(pcb->local_port);
 tcphdr->dst = htons(pcb->remote_port);
 tcphdr->seqno = htonl(pcb->snd_nxt-1);
 tcphdr->ackno = htonl(pcb->rcv_nxt);
 tcphdr->wnd = htons(pcb->rcv_wnd);
 tcphdr->urgp = 0;
 UIP_TCPH_HDRLEN_SET(tcphdr,5);

 tcphdr->chksum = 0;
 tcphdr->chksum = uip_chksum_pseudo(p,&pcb->local_ip,&pcb->remote_ip,UIP_PROTO_TCP,p->tot_len);

 uip_ipoutput(p,&pcb->local_ip,&pcb->remote_ip,pcb->ttl,0,UIP_PROTO_TCP);
 uip_pbuf_free(p);
}
