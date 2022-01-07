
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {int if_eflags; TYPE_1__* if_inp; } ;
struct if_rxpoll_stats {int dummy; } ;
struct TYPE_2__ {int pstats; } ;


 int IFEF_RXPOLL ;
 int VERIFY (int ) ;
 int bcopy (int *,struct if_rxpoll_stats*,int) ;
 int bzero (struct if_rxpoll_stats*,int) ;
 int ifnet_decr_iorefcnt (struct ifnet*) ;
 int ifnet_is_attached (struct ifnet*,int) ;

void
if_copy_rxpoll_stats(struct ifnet *ifp, struct if_rxpoll_stats *if_rs)
{
 bzero(if_rs, sizeof (*if_rs));
 if (!(ifp->if_eflags & IFEF_RXPOLL) || !ifnet_is_attached(ifp, 1))
  return;


 VERIFY(ifp->if_inp != ((void*)0));
 bcopy(&ifp->if_inp->pstats, if_rs, sizeof (*if_rs));


 ifnet_decr_iorefcnt(ifp);
}
