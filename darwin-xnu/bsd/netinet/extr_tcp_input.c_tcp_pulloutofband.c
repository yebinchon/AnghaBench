
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {int th_urp; } ;
struct tcpcb {char t_iobc; int t_oobflags; } ;
struct socket {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {int m_len; int m_flags; struct mbuf* m_next; TYPE_1__ m_pkthdr; } ;


 int M_PKTHDR ;
 int TCPOOB_HAVEDATA ;
 int bcopy (char*,char*,unsigned int) ;
 int caddr_t ;
 char* mtod (struct mbuf*,int ) ;
 int panic (char*) ;
 struct tcpcb* sototcpcb (struct socket*) ;

__attribute__((used)) static void
tcp_pulloutofband(struct socket *so, struct tcphdr *th, struct mbuf *m, int off)
{
 int cnt = off + th->th_urp - 1;

 while (cnt >= 0) {
  if (m->m_len > cnt) {
   char *cp = mtod(m, caddr_t) + cnt;
   struct tcpcb *tp = sototcpcb(so);

   tp->t_iobc = *cp;
   tp->t_oobflags |= TCPOOB_HAVEDATA;
   bcopy(cp+1, cp, (unsigned)(m->m_len - cnt - 1));
   m->m_len--;
   if (m->m_flags & M_PKTHDR)
    m->m_pkthdr.len--;
   return;
  }
  cnt -= m->m_len;
  m = m->m_next;
  if (m == 0)
   break;
 }
 panic("tcp_pulloutofband");
}
