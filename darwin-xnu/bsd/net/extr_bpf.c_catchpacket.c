
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_7__ {int pkt_flags; scalar_t__ pkt_flowsrc; int bufstatus_sndbuf; int bufstatus_if; int pkt_svc; int pkt_proto; int pkt_flowid; } ;
struct mbuf {TYPE_3__ m_pkthdr; } ;
struct bpf_packet {scalar_t__ bpfp_type; int bpfp_total_length; struct mbuf* bpfp_mbuf; } ;
struct TYPE_6__ {int tv_usec; int tv_sec; } ;
struct bpf_hdr_ext {int bh_hdrlen; int bh_caplen; int bh_flags; int bh_unsent_snd; int bh_unsent_bytes; int bh_pktflags; int bh_svc; int bh_proto; int bh_flowid; int bh_datalen; TYPE_2__ bh_tstamp; } ;
struct TYPE_8__ {int tv_usec; int tv_sec; } ;
struct bpf_hdr {int bh_hdrlen; int bh_caplen; int bh_datalen; TYPE_4__ bh_tstamp; } ;
struct bpf_d {int bd_flags; int bd_bufsize; int bd_slen; scalar_t__ bd_hbuf_read; scalar_t__ bd_headdrop; scalar_t__ bd_state; int bd_scnt; scalar_t__ bd_sbuf; scalar_t__ bd_immediate; int * bd_hbuf; int * bd_fbuf; scalar_t__ bd_hcnt; scalar_t__ bd_dcount; TYPE_1__* bd_bif; } ;
struct TYPE_5__ {int bif_exthdrlen; int bif_hdrlen; } ;


 int BPF_EXTENDED_HDR ;
 int BPF_HDR_EXT_FLAGS_DIR_IN ;
 int BPF_HDR_EXT_FLAGS_DIR_OUT ;
 scalar_t__ BPF_PACKET_TYPE_MBUF ;
 int BPF_PKTFLAGS_LAST_PKT ;
 int BPF_PKTFLAGS_START_SEQ ;
 int BPF_PKTFLAGS_TCP_REXMT ;
 scalar_t__ BPF_TIMED_OUT ;
 int BPF_WORDALIGN (int) ;
 scalar_t__ FLOWSRC_INPCB ;
 int PKTF_FLOW_ID ;
 int PKTF_FLOW_LOCALSRC ;
 int PKTF_FLOW_RAWSOCK ;
 int PKTF_LAST_PKT ;
 int PKTF_START_SEQ ;
 int PKTF_TCP_REXMT ;
 int PKTF_VALID_UNSENT_DATA ;
 int ROTATE_BUFFERS (struct bpf_d*) ;
 int bpf_wakeup (struct bpf_d*) ;
 int copy_bpf_packet (struct bpf_packet*,int *,int) ;
 int memset (struct bpf_hdr_ext*,int ,int) ;
 int microtime (struct timeval*) ;
 int min (int ,int ) ;
 int so_svc2tc (int ) ;

__attribute__((used)) static void
catchpacket(struct bpf_d *d, struct bpf_packet * pkt,
 u_int snaplen, int outbound)
{
 struct bpf_hdr *hp;
 struct bpf_hdr_ext *ehp;
 int totlen, curlen;
 int hdrlen, caplen;
 int do_wakeup = 0;
 u_char *payload;
 struct timeval tv;

 hdrlen = (d->bd_flags & BPF_EXTENDED_HDR) ? d->bd_bif->bif_exthdrlen :
     d->bd_bif->bif_hdrlen;






 totlen = hdrlen + min(snaplen, pkt->bpfp_total_length);
 if (totlen > d->bd_bufsize)
  totlen = d->bd_bufsize;

 if (hdrlen > totlen)
  return;




 curlen = BPF_WORDALIGN(d->bd_slen);
 if (curlen + totlen > d->bd_bufsize) {
  if (d->bd_hbuf_read != 0) {
   ++d->bd_dcount;
   return;
  }

  if (d->bd_fbuf == ((void*)0)) {
   if (d->bd_headdrop == 0) {




    ++d->bd_dcount;
    return;
   }



   d->bd_dcount += d->bd_hcnt;
   d->bd_fbuf = d->bd_hbuf;
   ROTATE_BUFFERS(d);
  } else {
   ROTATE_BUFFERS(d);
  }
  do_wakeup = 1;
  curlen = 0;
 } else if (d->bd_immediate || d->bd_state == BPF_TIMED_OUT)





  do_wakeup = 1;




 microtime(&tv);
 if (d->bd_flags & BPF_EXTENDED_HDR) {
  struct mbuf *m;

  m = (pkt->bpfp_type == BPF_PACKET_TYPE_MBUF)
   ? pkt->bpfp_mbuf : ((void*)0);
  ehp = (struct bpf_hdr_ext *)(void *)(d->bd_sbuf + curlen);
  memset(ehp, 0, sizeof(*ehp));
  ehp->bh_tstamp.tv_sec = tv.tv_sec;
  ehp->bh_tstamp.tv_usec = tv.tv_usec;

  ehp->bh_datalen = pkt->bpfp_total_length;
  ehp->bh_hdrlen = hdrlen;
  caplen = ehp->bh_caplen = totlen - hdrlen;
  if (m == ((void*)0)) {
   if (outbound) {
    ehp->bh_flags |= BPF_HDR_EXT_FLAGS_DIR_OUT;
   } else {
    ehp->bh_flags |= BPF_HDR_EXT_FLAGS_DIR_IN;
   }
  } else if (outbound) {
   ehp->bh_flags |= BPF_HDR_EXT_FLAGS_DIR_OUT;


   if ((m->m_pkthdr.pkt_flags & (PKTF_FLOW_ID|
       PKTF_FLOW_LOCALSRC|PKTF_FLOW_RAWSOCK)) ==
       (PKTF_FLOW_ID|PKTF_FLOW_LOCALSRC) &&
       m->m_pkthdr.pkt_flowsrc == FLOWSRC_INPCB) {
    ehp->bh_flowid = m->m_pkthdr.pkt_flowid;
    ehp->bh_proto = m->m_pkthdr.pkt_proto;
   }
   ehp->bh_svc = so_svc2tc(m->m_pkthdr.pkt_svc);
   if (m->m_pkthdr.pkt_flags & PKTF_TCP_REXMT)
    ehp->bh_pktflags |= BPF_PKTFLAGS_TCP_REXMT;
   if (m->m_pkthdr.pkt_flags & PKTF_START_SEQ)
    ehp->bh_pktflags |= BPF_PKTFLAGS_START_SEQ;
   if (m->m_pkthdr.pkt_flags & PKTF_LAST_PKT)
    ehp->bh_pktflags |= BPF_PKTFLAGS_LAST_PKT;
   if (m->m_pkthdr.pkt_flags & PKTF_VALID_UNSENT_DATA) {
    ehp->bh_unsent_bytes =
        m->m_pkthdr.bufstatus_if;
    ehp->bh_unsent_snd =
        m->m_pkthdr.bufstatus_sndbuf;
   }
  } else
   ehp->bh_flags |= BPF_HDR_EXT_FLAGS_DIR_IN;
  payload = (u_char *)ehp + hdrlen;
 } else {
  hp = (struct bpf_hdr *)(void *)(d->bd_sbuf + curlen);
  hp->bh_tstamp.tv_sec = tv.tv_sec;
  hp->bh_tstamp.tv_usec = tv.tv_usec;
  hp->bh_datalen = pkt->bpfp_total_length;
  hp->bh_hdrlen = hdrlen;
  caplen = hp->bh_caplen = totlen - hdrlen;
  payload = (u_char *)hp + hdrlen;
 }



 copy_bpf_packet(pkt, payload, caplen);
 d->bd_slen = curlen + totlen;
 d->bd_scnt += 1;

 if (do_wakeup)
  bpf_wakeup(d);
}
