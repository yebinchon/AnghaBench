
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {struct mbuf* sb_mb; } ;
struct socket {TYPE_1__ so_snd; } ;
struct TYPE_4__ {scalar_t__ mp_dsn; int pkt_flags; scalar_t__ mp_rlen; } ;
struct mbuf {int m_flags; struct mbuf* m_next; TYPE_2__ m_pkthdr; } ;
typedef int boolean_t ;


 int FALSE ;
 int M_PKTHDR ;
 int PKTF_MPTCP ;
 int TRUE ;
 int VERIFY (int) ;

__attribute__((used)) static boolean_t
mptcp_search_seq_in_sub(struct mbuf *m, struct socket *so)
{
 struct mbuf *so_m = so->so_snd.sb_mb;
 uint64_t dsn = m->m_pkthdr.mp_dsn;

 while (so_m) {
  VERIFY(so_m->m_flags & M_PKTHDR);
  VERIFY(so_m->m_pkthdr.pkt_flags & PKTF_MPTCP);


  if (so_m->m_pkthdr.mp_dsn <= dsn &&
      so_m->m_pkthdr.mp_dsn + so_m->m_pkthdr.mp_rlen > dsn)
   return TRUE;

  so_m = so_m->m_next;
 }

 return FALSE;
}
