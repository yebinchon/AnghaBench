
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_ifinfo {int initialized; int retrans; int basereachable; int reachable; int chlim; int linkmtu; int lock; } ;
struct ifnet {int if_mtu; } ;


 int IPV6_DEFHLIM ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int ND_COMPUTE_RTIME (int ) ;
 struct nd_ifinfo* ND_IFINFO (struct ifnet*) ;
 int REACHABLE_TIME ;
 int RETRANS_TIMER ;
 int VERIFY (int) ;

void
nd6_ifreset(struct ifnet *ifp)
{
 struct nd_ifinfo *ndi = ND_IFINFO(ifp);
 VERIFY(((void*)0) != ndi);
 VERIFY(ndi->initialized);

 LCK_MTX_ASSERT(&ndi->lock, LCK_MTX_ASSERT_OWNED);
 ndi->linkmtu = ifp->if_mtu;
 ndi->chlim = IPV6_DEFHLIM;
 ndi->basereachable = REACHABLE_TIME;
 ndi->reachable = ND_COMPUTE_RTIME(ndi->basereachable);
 ndi->retrans = RETRANS_TIMER;
}
