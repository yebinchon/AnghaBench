
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {scalar_t__ if_flt_busy; int if_flt_lock; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int VERIFY (int) ;

__attribute__((used)) static void
if_flt_monitor_busy(struct ifnet *ifp)
{
 LCK_MTX_ASSERT(&ifp->if_flt_lock, LCK_MTX_ASSERT_OWNED);

 ++ifp->if_flt_busy;
 VERIFY(ifp->if_flt_busy != 0);
}
