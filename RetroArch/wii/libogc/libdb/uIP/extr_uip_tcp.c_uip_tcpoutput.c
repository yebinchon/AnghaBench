
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32_t ;
struct uip_tcpseg {scalar_t__ len; struct uip_tcpseg* next; TYPE_1__* tcphdr; } ;
struct uip_tcp_pcb {int flags; scalar_t__ lastack; scalar_t__ snd_nxt; scalar_t__ rcv_nxt; scalar_t__ state; scalar_t__ snd_max; struct uip_tcpseg* unsent; struct uip_tcpseg* unacked; int tos; int ttl; int remote_ip; int local_ip; int rcv_wnd; int remote_port; int local_port; int cwnd; int snd_wnd; } ;
struct uip_tcp_hdr {int chksum; scalar_t__ urgp; void* wnd; void* ackno; void* seqno; void* dst; void* src; } ;
struct uip_pbuf {int tot_len; struct uip_tcp_hdr* payload; } ;
typedef int s8_t ;
struct TYPE_2__ {int seqno; } ;


 int UIP_ERROR (char*) ;
 int UIP_ERR_BUF ;
 int UIP_ERR_OK ;
 scalar_t__ UIP_MIN (int ,int ) ;
 int UIP_PBUF_IP ;
 int UIP_PBUF_RAM ;
 int UIP_PROTO_TCP ;
 scalar_t__ UIP_SYN_SENT ;
 int UIP_TCPH_FLAGS_SET (struct uip_tcp_hdr*,int ) ;
 int UIP_TCPH_HDRLEN_SET (struct uip_tcp_hdr*,int) ;
 int UIP_TCPH_SET_FLAG (TYPE_1__*,int ) ;
 int UIP_TCP_ACK ;
 int UIP_TCP_HLEN ;
 scalar_t__ UIP_TCP_SEQ_LT (scalar_t__,scalar_t__) ;
 scalar_t__ UIP_TCP_TCPLEN (struct uip_tcpseg*) ;
 int UIP_TF_ACK_DELAY ;
 int UIP_TF_ACK_NOW ;
 void* htonl (scalar_t__) ;
 void* htons (int ) ;
 scalar_t__ ntohl (int ) ;
 int uip_chksum_pseudo (struct uip_pbuf*,int *,int *,int ,int ) ;
 int uip_ipoutput (struct uip_pbuf*,int *,int *,int ,int ,int ) ;
 struct uip_pbuf* uip_pbuf_alloc (int ,int ,int ) ;
 int uip_pbuf_free (struct uip_pbuf*) ;
 struct uip_tcp_pcb* uip_tcp_input_pcb ;
 int uip_tcpoutput_segments (struct uip_tcpseg*,struct uip_tcp_pcb*) ;
 int uip_tcpseg_free (struct uip_tcpseg*) ;

s8_t uip_tcpoutput(struct uip_tcp_pcb *pcb)
{
 u32_t wnd;
 struct uip_pbuf *p;
 struct uip_tcp_hdr *tcphdr;
 struct uip_tcpseg *seg,*useg;

 if(uip_tcp_input_pcb==pcb) return 0;

 wnd = UIP_MIN(pcb->snd_wnd,pcb->cwnd);
 seg = pcb->unsent;
 useg = pcb->unacked;
 if(useg!=((void*)0)) {
  for(;useg->next!=((void*)0);useg=useg->next);
 }

 if(pcb->flags&UIP_TF_ACK_NOW &&
  (seg==((void*)0) || ntohl(seg->tcphdr->seqno)-pcb->lastack+seg->len>wnd)) {

  p = uip_pbuf_alloc(UIP_PBUF_IP,UIP_TCP_HLEN,UIP_PBUF_RAM);
  if(p==((void*)0)) {
   UIP_ERROR("uip_tcpoutput: (ACK) could not allocate pbuf.");
   return UIP_ERR_BUF;
  }
  pcb->flags &= ~(UIP_TF_ACK_DELAY|UIP_TF_ACK_NOW);

  tcphdr = p->payload;
  tcphdr->src = htons(pcb->local_port);
  tcphdr->dst = htons(pcb->remote_port);
  tcphdr->seqno = htonl(pcb->snd_nxt);
  tcphdr->ackno = htonl(pcb->rcv_nxt);
  UIP_TCPH_FLAGS_SET(tcphdr,UIP_TCP_ACK);
  tcphdr->wnd = htons(pcb->rcv_wnd);
  tcphdr->urgp = 0;
  UIP_TCPH_HDRLEN_SET(tcphdr,5);

  tcphdr->chksum = 0;
  tcphdr->chksum = uip_chksum_pseudo(p,&pcb->local_ip,&pcb->remote_ip,UIP_PROTO_TCP,p->tot_len);

  uip_ipoutput(p,&pcb->local_ip,&pcb->remote_ip,pcb->ttl,pcb->tos,UIP_PROTO_TCP);
  uip_pbuf_free(p);

  return UIP_ERR_OK;
 }

 while(seg!=((void*)0) && ntohl(seg->tcphdr->seqno)-pcb->lastack+seg->len<=wnd) {
  pcb->unsent = seg->next;
  if(pcb->state!=UIP_SYN_SENT) {
   UIP_TCPH_SET_FLAG(seg->tcphdr,UIP_TCP_ACK);
   pcb->flags &= ~(UIP_TF_ACK_DELAY|UIP_TF_ACK_NOW);
  }

  uip_tcpoutput_segments(seg,pcb);

  pcb->snd_nxt = ntohl(seg->tcphdr->seqno)+UIP_TCP_TCPLEN(seg);
  if(UIP_TCP_SEQ_LT(pcb->snd_max,pcb->snd_nxt)) pcb->snd_max = pcb->snd_nxt;

  if(UIP_TCP_TCPLEN(seg)>0) {
   seg->next = ((void*)0);
   if(pcb->unacked==((void*)0)) {
    pcb->unacked = seg;
    useg = seg;
   } else {
    if(UIP_TCP_SEQ_LT(ntohl(seg->tcphdr->seqno),ntohl(useg->tcphdr->seqno))) {
     seg->next = pcb->unacked;
     pcb->unacked = seg;
    } else {
     useg->next = seg;
     useg = useg->next;
    }
   }
  } else
   uip_tcpseg_free(seg);

  seg = pcb->unsent;
 }
 return UIP_ERR_OK;
}
