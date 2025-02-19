
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8_t ;
struct uip_tcpseg {struct uip_tcpseg* next; TYPE_1__* tcphdr; } ;
struct uip_tcp_pcb {int state; scalar_t__ snd_nxt; scalar_t__ rcv_nxt; scalar_t__ rcv_wnd; int mss; int cwnd; int cb_arg; scalar_t__ (* accept ) (int ,struct uip_tcp_pcb*,scalar_t__) ;scalar_t__ lastack; scalar_t__ (* connected ) (int ,struct uip_tcp_pcb*,scalar_t__) ;struct uip_tcpseg* unacked; int snd_queuelen; int snd_wl1; int snd_wnd; int snd_buf; scalar_t__ keepcnt; int tmr; int flags; } ;
typedef scalar_t__ s8_t ;
struct TYPE_6__ {int src; int dst; } ;
struct TYPE_5__ {int src; int dst; int wnd; } ;
struct TYPE_4__ {int seqno; } ;


 int UIP_CLOSED ;


 scalar_t__ UIP_ERR_ABRT ;
 scalar_t__ UIP_ERR_OK ;
 scalar_t__ UIP_ERR_RST ;






 int UIP_TCP_ACK ;
 int UIP_TCP_FIN ;
 int UIP_TCP_REG (int *,struct uip_tcp_pcb*) ;
 int UIP_TCP_RMV (int *,struct uip_tcp_pcb*) ;
 int UIP_TCP_RST ;
 scalar_t__ UIP_TCP_SEQ_BETWEEN (scalar_t__,scalar_t__,scalar_t__) ;
 int UIP_TCP_SYN ;
 int UIP_TF_ACK_DELAY ;
 int UIP_TF_CLOSED ;
 int UIP_TF_RESET ;
 void* UIP_TIME_WAIT ;
 int ntohl (int ) ;
 scalar_t__ stub1 (int ,struct uip_tcp_pcb*,scalar_t__) ;
 scalar_t__ stub2 (int ,struct uip_tcp_pcb*,scalar_t__) ;
 scalar_t__ uip_ackno ;
 int uip_flags ;
 TYPE_3__* uip_iphdr ;
 int uip_recv_flags ;
 scalar_t__ uip_seqno ;
 int uip_tcp_abort (struct uip_tcp_pcb*) ;
 int uip_tcp_ack (struct uip_tcp_pcb*) ;
 int uip_tcp_acknow (struct uip_tcp_pcb*) ;
 int uip_tcp_active_pcbs ;
 int uip_tcp_parseopt (struct uip_tcp_pcb*) ;
 int uip_tcp_pcbpurge (struct uip_tcp_pcb*) ;
 int uip_tcp_rst (scalar_t__,scalar_t__,int *,int *,int ,int ) ;
 int uip_tcp_ticks ;
 int uip_tcp_tw_pcbs ;
 TYPE_2__* uip_tcphdr ;
 scalar_t__ uip_tcplen ;
 int uip_tcpreceive (struct uip_tcp_pcb*) ;
 int uip_tcpseg_free (struct uip_tcpseg*) ;

__attribute__((used)) static s8_t uip_tcpprocess(struct uip_tcp_pcb *pcb)
{
 struct uip_tcpseg *rseg;
 u8_t acceptable = 0;
 s8_t err;

 err = 0;
 if(uip_flags&UIP_TCP_RST) {
  if(pcb->state==128) {
   if(uip_ackno==pcb->snd_nxt) acceptable = 1;
  } else {
   if(UIP_TCP_SEQ_BETWEEN(uip_seqno,pcb->rcv_nxt,pcb->rcv_nxt+pcb->rcv_wnd)) acceptable = 1;
  }
  if(acceptable) {
   uip_recv_flags = UIP_TF_RESET;
   pcb->flags &= ~UIP_TF_ACK_DELAY;
   return UIP_ERR_RST;
  } else
   return UIP_ERR_OK;
 }

 pcb->tmr = uip_tcp_ticks;
 pcb->keepcnt = 0;

 switch(pcb->state) {
  case 128:
   if(uip_flags&UIP_TCP_ACK && uip_flags&UIP_TCP_SYN &&
    uip_ackno==ntohl(pcb->unacked->tcphdr->seqno)+1) {
    pcb->snd_buf++;
    pcb->rcv_nxt = uip_seqno+1;
    pcb->lastack = uip_ackno;
    pcb->snd_wnd = uip_tcphdr->wnd;
    pcb->snd_wl1 = uip_seqno-1;
    pcb->state = 133;
    pcb->cwnd = pcb->mss;
    pcb->snd_queuelen--;

    rseg = pcb->unacked;
    pcb->unacked = rseg->next;
    uip_tcpseg_free(rseg);

    uip_tcp_parseopt(pcb);

    if(pcb->connected!=((void*)0)) err = pcb->connected(pcb->cb_arg,pcb,UIP_ERR_OK);

    uip_tcp_ack(pcb);
   } else if(uip_flags&UIP_TCP_ACK) {
    uip_tcp_rst(uip_ackno,uip_seqno+uip_tcplen,&uip_iphdr->dst,&uip_iphdr->src,uip_tcphdr->dst,uip_tcphdr->src);
   }
   break;
  case 129:
   if(uip_flags&UIP_TCP_ACK && !(uip_flags&UIP_TCP_RST)) {
    if(UIP_TCP_SEQ_BETWEEN(uip_ackno,pcb->lastack+1,pcb->snd_nxt)) {
     pcb->state = 133;

     if(pcb->accept!=((void*)0)) err = pcb->accept(pcb->cb_arg,pcb,UIP_ERR_OK);
     if(err!=UIP_ERR_OK) {
      uip_tcp_abort(pcb);
      return UIP_ERR_ABRT;
     }
     uip_tcpreceive(pcb);
     pcb->cwnd = pcb->mss;
    } else {
     uip_tcp_rst(uip_ackno,uip_seqno+uip_tcplen,&uip_iphdr->dst,&uip_iphdr->src,uip_tcphdr->dst,uip_tcphdr->src);
    }
   }
   break;
  case 135:
  case 133:
   uip_tcpreceive(pcb);
   if(uip_flags&UIP_TCP_FIN) {
    uip_tcp_acknow(pcb);
    pcb->state = 135;
   }
   break;
  case 132:
   uip_tcpreceive(pcb);
   if(uip_flags&UIP_TCP_FIN) {
    if(uip_flags&UIP_TCP_ACK && uip_ackno==pcb->snd_nxt) {
     uip_tcp_acknow(pcb);
     uip_tcp_pcbpurge(pcb);
     UIP_TCP_RMV(&uip_tcp_active_pcbs,pcb);
     pcb->state = UIP_TIME_WAIT;
     UIP_TCP_REG(&uip_tcp_tw_pcbs,pcb);
    } else {
     uip_tcp_acknow(pcb);
     pcb->state = 134;
    }
   } else if(uip_flags&UIP_TCP_ACK && uip_ackno==pcb->snd_nxt) {
    pcb->state = 131;
   }
   break;
  case 131:
   uip_tcpreceive(pcb);
   if(uip_flags&UIP_TCP_FIN) {
    uip_tcp_acknow(pcb);
    uip_tcp_pcbpurge(pcb);
    UIP_TCP_RMV(&uip_tcp_active_pcbs,pcb);
    pcb->state = UIP_TIME_WAIT;
    UIP_TCP_REG(&uip_tcp_tw_pcbs,pcb);
   }
   break;
  case 134:
   uip_tcpreceive(pcb);
   if(uip_flags&UIP_TCP_ACK && uip_ackno==pcb->snd_nxt) {
    uip_tcp_acknow(pcb);
    uip_tcp_pcbpurge(pcb);
    UIP_TCP_RMV(&uip_tcp_active_pcbs,pcb);
    pcb->state = UIP_TIME_WAIT;
    UIP_TCP_REG(&uip_tcp_tw_pcbs,pcb);
   }
   break;
  case 130:
   uip_tcpreceive(pcb);
   if(uip_flags&UIP_TCP_ACK && uip_ackno==pcb->snd_nxt) {
    pcb->state = UIP_CLOSED;
    uip_recv_flags = UIP_TF_CLOSED;
   }
   break;
  default:
   break;

 }
 return UIP_ERR_OK;
}
