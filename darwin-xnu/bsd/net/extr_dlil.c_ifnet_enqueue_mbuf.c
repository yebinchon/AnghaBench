
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_flags; int * m_nextpkt; } ;
struct ifnet {int if_eflags; int if_flags; } ;
typedef int errno_t ;
typedef int boolean_t ;


 int EINVAL ;
 int ENETDOWN ;
 int ENXIO ;
 int IFEF_TXSTART ;
 int IFF_UP ;
 int IF_FULLY_ATTACHED (struct ifnet*) ;
 int M_PKTHDR ;
 int QP_MBUF ;
 int TRUE ;
 int ifnet_enqueue_common (struct ifnet*,struct mbuf*,int ,int ,int *) ;
 int m_freem (struct mbuf*) ;
 int m_freem_list (struct mbuf*) ;

errno_t
ifnet_enqueue_mbuf(struct ifnet *ifp, struct mbuf *m, boolean_t flush,
    boolean_t *pdrop)
{
 if (ifp == ((void*)0) || m == ((void*)0) || !(m->m_flags & M_PKTHDR) ||
     m->m_nextpkt != ((void*)0)) {
  if (m != ((void*)0)) {
   m_freem_list(m);
   *pdrop = TRUE;
  }
  return (EINVAL);
 } else if (!(ifp->if_eflags & IFEF_TXSTART) ||
     !IF_FULLY_ATTACHED(ifp)) {

  m_freem(m);
  *pdrop = TRUE;
  return (ENXIO);
 } else if (!(ifp->if_flags & IFF_UP)) {
  m_freem(m);
  *pdrop = TRUE;
  return (ENETDOWN);
 }

 return (ifnet_enqueue_common(ifp, m, QP_MBUF, flush, pdrop));
}
