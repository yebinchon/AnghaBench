
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {struct mbuf* sb_mb; } ;
struct socket {TYPE_1__ so_snd; } ;
struct mptses {int dummy; } ;
struct TYPE_4__ {scalar_t__ mp_dsn; scalar_t__ mp_rlen; } ;
struct mbuf {struct mbuf* m_next; TYPE_2__ m_pkthdr; } ;


 scalar_t__ MPTCP_SEQ_GT (scalar_t__,int ) ;
 scalar_t__ MPTCP_SEQ_LEQ (scalar_t__,int ) ;
 struct socket* mptetoso (struct mptses*) ;

__attribute__((used)) static struct mbuf *
mptcp_lookup_dsn(struct mptses *mpte, uint64_t dsn)
{
 struct socket *mp_so = mptetoso(mpte);
 struct mbuf *m;

 m = mp_so->so_snd.sb_mb;

 while (m) {

  if (MPTCP_SEQ_LEQ(m->m_pkthdr.mp_dsn, dsn) &&
      MPTCP_SEQ_GT(m->m_pkthdr.mp_dsn + m->m_pkthdr.mp_rlen, dsn))
   break;



  if (MPTCP_SEQ_GT(m->m_pkthdr.mp_dsn, dsn))
   return ((void*)0);

  m = m->m_next;
 }

 return m;
}
