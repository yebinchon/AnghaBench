
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef void* u32_t ;
struct uip_tcp_pcb {int rto; int sv; int cwnd; scalar_t__ keepcnt; int keepalive; int recv; scalar_t__ polltmr; int tmr; void* snd_lbb; void* lastack; void* snd_max; void* snd_nxt; void* snd_wl2; scalar_t__ rtime; scalar_t__ sa; int mss; int ttl; scalar_t__ tos; int rcv_wnd; scalar_t__ snd_queuelen; int snd_buf; int prio; } ;


 int UIP_MEMSET (struct uip_tcp_pcb*,int ,int) ;
 int UIP_TCP_KEEPDEFAULT ;
 int UIP_TCP_MSS ;
 int UIP_TCP_PRIO_NORMAL ;
 int UIP_TCP_SLOW_INTERVAL ;
 int UIP_TCP_SND_BUF ;
 int UIP_TCP_TTL ;
 int UIP_TCP_WND ;
 struct uip_tcp_pcb* memb_alloc (int *) ;
 int uip_tcp_nullrecv ;
 int uip_tcp_pcbs ;
 int uip_tcp_ticks ;
 void* uip_tcpiss_next () ;

struct uip_tcp_pcb* uip_tcp_pcballoc(u8_t prio)
{
 u32_t iss;
 struct uip_tcp_pcb *pcb = ((void*)0);

 pcb = memb_alloc(&uip_tcp_pcbs);
 if(pcb!=((void*)0)) {
  UIP_MEMSET(pcb,0,sizeof(struct uip_tcp_pcb));
  pcb->prio = UIP_TCP_PRIO_NORMAL;
  pcb->snd_buf = UIP_TCP_SND_BUF;
  pcb->snd_queuelen = 0;
  pcb->rcv_wnd = UIP_TCP_WND;
  pcb->tos = 0;
  pcb->ttl = UIP_TCP_TTL;
  pcb->mss = UIP_TCP_MSS;
  pcb->rto = 3000/UIP_TCP_SLOW_INTERVAL;
  pcb->sa = 0;
  pcb->sv = 3000/UIP_TCP_SLOW_INTERVAL;
  pcb->rtime = 0;
  pcb->cwnd = 1;
  iss = uip_tcpiss_next();
  pcb->snd_wl2 = iss;
  pcb->snd_nxt = iss;
  pcb->snd_max = iss;
  pcb->lastack = iss;
  pcb->snd_lbb = iss;
  pcb->tmr = uip_tcp_ticks;
  pcb->polltmr = 0;

  pcb->recv = uip_tcp_nullrecv;

  pcb->keepalive = UIP_TCP_KEEPDEFAULT;
  pcb->keepcnt = 0;
 }
 return pcb;
}
