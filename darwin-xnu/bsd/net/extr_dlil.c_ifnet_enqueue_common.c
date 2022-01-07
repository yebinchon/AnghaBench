
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint64_t ;
typedef scalar_t__ u_int64_t ;
struct timespec {int dummy; } ;
struct TYPE_2__ {int pkt_flags; int pkt_flowsrc; scalar_t__ pkt_timestamp; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; int * m_nextpkt; } ;
struct ifnet {int if_eflags; int if_start_delay_timeout; scalar_t__ if_start_delay_swin; int if_start_delay_cnt; int if_start_delay_idle; int if_start_delay_qlen; int if_snd; void* if_rt_sendts; void* if_fg_sendts; } ;
typedef int errno_t ;
typedef int classq_pkt_type_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int) ;
 int EQFULL ;
 int EQSUSPENDED ;
 int FLOWSRC_INPCB ;
 int IFEF_DELAY_START ;
 int IFEF_ENQUEUE_MULTI ;
 int IFEF_TXSTART ;
 int M_PKTHDR ;
 int PKTF_FLOW_ID ;
 int PKTF_SO_BACKGROUND ;
 int PKTF_SO_REALTIME ;
 int PKTF_TS_VALID ;

 int VERIFY (int ) ;
 void* _net_uptime ;
 int ifclassq_enqueue (int *,struct mbuf*,int const,scalar_t__*) ;
 int ifnet_delay_start_disabled ;
 int ifnet_start (struct ifnet*) ;
 int nanouptime (struct timespec*) ;
 int net_timernsec (struct timespec*,scalar_t__*) ;

__attribute__((used)) static inline errno_t
ifnet_enqueue_common(struct ifnet *ifp, void *p, classq_pkt_type_t ptype,
    boolean_t flush, boolean_t *pdrop)
{
 volatile uint64_t *fg_ts = ((void*)0);
 volatile uint64_t *rt_ts = ((void*)0);
 struct mbuf *m = p;
 struct timespec now;
 u_int64_t now_nsec = 0;
 int error = 0;

 ASSERT(ifp->if_eflags & IFEF_TXSTART);







 switch (ptype) {
 case 128:
  ASSERT(m->m_flags & M_PKTHDR);
  ASSERT(m->m_nextpkt == ((void*)0));

  if (!(m->m_pkthdr.pkt_flags & PKTF_TS_VALID) ||
      m->m_pkthdr.pkt_timestamp == 0) {
   nanouptime(&now);
   net_timernsec(&now, &now_nsec);
   m->m_pkthdr.pkt_timestamp = now_nsec;
  }
  m->m_pkthdr.pkt_flags &= ~PKTF_TS_VALID;





  if ((m->m_pkthdr.pkt_flags & PKTF_FLOW_ID) &&
      m->m_pkthdr.pkt_flowsrc == FLOWSRC_INPCB) {
   if (!(m->m_pkthdr.pkt_flags & PKTF_SO_BACKGROUND)) {
    ifp->if_fg_sendts = _net_uptime;
    if (fg_ts != ((void*)0))
     *fg_ts = _net_uptime;
   }
   if (m->m_pkthdr.pkt_flags & PKTF_SO_REALTIME) {
    ifp->if_rt_sendts = _net_uptime;
    if (rt_ts != ((void*)0))
     *rt_ts = _net_uptime;
   }
  }
  break;


 default:
  VERIFY(0);

 }

 if (ifp->if_eflags & IFEF_ENQUEUE_MULTI) {
  if (now_nsec == 0) {
   nanouptime(&now);
   net_timernsec(&now, &now_nsec);
  }
  u_int64_t dwin = (ifp->if_start_delay_timeout << 1);
  if (ifp->if_start_delay_swin > 0) {
   if ((ifp->if_start_delay_swin + dwin) > now_nsec) {
    ifp->if_start_delay_cnt++;
   } else if ((now_nsec - ifp->if_start_delay_swin)
       >= (200 * 1000 * 1000)) {
    ifp->if_start_delay_swin = now_nsec;
    ifp->if_start_delay_cnt = 1;
    ifp->if_start_delay_idle = 0;
    if (ifp->if_eflags & IFEF_DELAY_START) {
     ifp->if_eflags &=
         ~(IFEF_DELAY_START);
     ifnet_delay_start_disabled++;
    }
   } else {
    if (ifp->if_start_delay_cnt >=
        ifp->if_start_delay_qlen) {
     ifp->if_eflags |= IFEF_DELAY_START;
     ifp->if_start_delay_idle = 0;
    } else {
     if (ifp->if_start_delay_idle >= 10) {
      ifp->if_eflags &= ~(IFEF_DELAY_START);
      ifnet_delay_start_disabled++;
     } else {
      ifp->if_start_delay_idle++;
     }
    }
    ifp->if_start_delay_swin = now_nsec;
    ifp->if_start_delay_cnt = 1;
   }
  } else {
   ifp->if_start_delay_swin = now_nsec;
   ifp->if_start_delay_cnt = 1;
   ifp->if_start_delay_idle = 0;
   ifp->if_eflags &= ~(IFEF_DELAY_START);
  }
 } else {
  ifp->if_eflags &= ~(IFEF_DELAY_START);
 }

 switch (ptype) {
 case 128:

  error = ifclassq_enqueue(&ifp->if_snd, m, 128, pdrop);
  m = ((void*)0);
  break;


 default:
  break;
 }






 if (!(ifp->if_eflags & IFEF_ENQUEUE_MULTI) &&
     ((error == 0 && flush) || error == EQFULL || error == EQSUSPENDED))
  ifnet_start(ifp);

 return (error);
}
