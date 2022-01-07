
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_flt_lock; int if_flt_head; int if_flt_waiters; scalar_t__ if_flt_busy; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ PZERO ;
 int if_flt_monitor_busy (struct ifnet*) ;
 int msleep (int *,int *,scalar_t__,char*,int *) ;

__attribute__((used)) static void
if_flt_monitor_enter(struct ifnet *ifp)
{
 LCK_MTX_ASSERT(&ifp->if_flt_lock, LCK_MTX_ASSERT_OWNED);

 while (ifp->if_flt_busy) {
  ++ifp->if_flt_waiters;
  (void) msleep(&ifp->if_flt_head, &ifp->if_flt_lock,
      (PZERO - 1), "if_flt_monitor", ((void*)0));
 }
 if_flt_monitor_busy(ifp);
}
