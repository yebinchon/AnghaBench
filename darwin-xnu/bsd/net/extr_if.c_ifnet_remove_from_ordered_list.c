
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tqe_prev; int * tqe_next; } ;
struct ifnet {TYPE_1__ if_ordered_link; } ;


 int TAILQ_REMOVE (int *,struct ifnet*,int ) ;
 int VERIFY (int) ;
 scalar_t__ if_ordered_count ;
 int if_ordered_link ;
 int ifnet_head_assert_exclusive () ;
 int ifnet_ordered_head ;

void
ifnet_remove_from_ordered_list(struct ifnet *ifp)
{
 ifnet_head_assert_exclusive();


 TAILQ_REMOVE(&ifnet_ordered_head, ifp, if_ordered_link);
 ifp->if_ordered_link.tqe_next = ((void*)0);
 ifp->if_ordered_link.tqe_prev = ((void*)0);


 VERIFY(if_ordered_count > 0);
 if_ordered_count--;
}
