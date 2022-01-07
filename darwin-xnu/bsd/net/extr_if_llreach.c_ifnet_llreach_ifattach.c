
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_llreach_lock; int if_ll_srcs; } ;
typedef int boolean_t ;


 int RB_INIT (int *) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_exclusive (int *) ;

void
ifnet_llreach_ifattach(struct ifnet *ifp, boolean_t reuse)
{
 lck_rw_lock_exclusive(&ifp->if_llreach_lock);

 if (!reuse)
  RB_INIT(&ifp->if_ll_srcs);
 lck_rw_done(&ifp->if_llreach_lock);
}
