
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tqe_prev; int * tqe_next; } ;
struct ifnet {TYPE_1__ if_detaching_link; } ;


 struct ifnet* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct ifnet*,int ) ;
 int VERIFY (int) ;
 int dlil_if_lock_assert () ;
 int if_detaching_link ;
 scalar_t__ ifnet_detaching_cnt ;
 int ifnet_detaching_head ;

__attribute__((used)) static struct ifnet *
ifnet_detaching_dequeue(void)
{
 struct ifnet *ifp;

 dlil_if_lock_assert();

 ifp = TAILQ_FIRST(&ifnet_detaching_head);
 VERIFY(ifnet_detaching_cnt != 0 || ifp == ((void*)0));
 if (ifp != ((void*)0)) {
  VERIFY(ifnet_detaching_cnt != 0);
  --ifnet_detaching_cnt;
  TAILQ_REMOVE(&ifnet_detaching_head, ifp, if_detaching_link);
  ifp->if_detaching_link.tqe_next = ((void*)0);
  ifp->if_detaching_link.tqe_prev = ((void*)0);
 }
 return (ifp);
}
