
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pkt_flags; } ;
struct mbuf {struct mbuf* m_nextpkt; TYPE_1__ m_pkthdr; } ;
struct ip_fw_args {int dummy; } ;
struct ifnet {int dummy; } ;
typedef scalar_t__ net_thread_marks_t ;




 scalar_t__ IFNET_IS_INTCOPROC (struct ifnet*) ;
 int NET_THREAD_HELD_PF ;
 int PKTF_LOOP ;
 int VERIFY (int) ;
 int intcoproc_unrestricted ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int lck_rw_done (int ) ;
 int lck_rw_lock_shared (int ) ;
 struct ifnet* lo_ifp ;
 scalar_t__ net_thread_marks_none ;
 int net_thread_marks_pop (scalar_t__) ;
 scalar_t__ net_thread_marks_push (int ) ;
 int pf_inet6_hook (struct ifnet*,struct mbuf**,int,struct ip_fw_args*) ;
 int pf_inet_hook (struct ifnet*,struct mbuf**,int,struct ip_fw_args*) ;
 int pf_is_enabled ;
 int pf_lock ;
 int pf_perim_lock ;

int
pf_af_hook(struct ifnet *ifp, struct mbuf **mppn, struct mbuf **mp,
    unsigned int af, int input, struct ip_fw_args *fwa)
{
 int error = 0;
 struct mbuf *nextpkt;
 net_thread_marks_t marks;
 struct ifnet * pf_ifp = ifp;


 if (!intcoproc_unrestricted && ifp && IFNET_IS_INTCOPROC(ifp))
  return (0);

 marks = net_thread_marks_push(NET_THREAD_HELD_PF);

 if (marks != net_thread_marks_none) {
  lck_rw_lock_shared(pf_perim_lock);
  if (!pf_is_enabled)
   goto done;
  lck_mtx_lock(pf_lock);
 }

 if (mppn != ((void*)0) && *mppn != ((void*)0))
  VERIFY(*mppn == *mp);
 if ((nextpkt = (*mp)->m_nextpkt) != ((void*)0))
  (*mp)->m_nextpkt = ((void*)0);
 if (input && ((*mp)->m_pkthdr.pkt_flags & PKTF_LOOP)) {
  pf_ifp = lo_ifp;
 }

 switch (af) {
 default:
  break;
 }


 if (*mp != ((void*)0) && nextpkt != ((void*)0)) {
  struct mbuf *m = *mp;
  while (m->m_nextpkt != ((void*)0))
   m = m->m_nextpkt;
  m->m_nextpkt = nextpkt;
 }

 if (mppn != ((void*)0)) {
  if (*mp != ((void*)0))
   *mppn = *mp;
  else
   *mppn = nextpkt;
 }

 if (marks != net_thread_marks_none)
  lck_mtx_unlock(pf_lock);

done:
 if (marks != net_thread_marks_none)
  lck_rw_done(pf_perim_lock);

 net_thread_marks_pop(marks);
 return (error);
}
