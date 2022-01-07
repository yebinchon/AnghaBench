
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
typedef int caddr_t ;


 int TAILQ_INSERT_TAIL (int *,struct ifnet*,int ) ;
 int VERIFY (int) ;
 int dlil_if_lock_assert () ;
 int if_detaching_link ;
 int ifnet_delayed_run ;
 scalar_t__ ifnet_detaching_cnt ;
 int ifnet_detaching_head ;
 int wakeup (int ) ;

__attribute__((used)) static void
ifnet_detaching_enqueue(struct ifnet *ifp)
{
 dlil_if_lock_assert();

 ++ifnet_detaching_cnt;
 VERIFY(ifnet_detaching_cnt != 0);
 TAILQ_INSERT_TAIL(&ifnet_detaching_head, ifp, if_detaching_link);
 wakeup((caddr_t)&ifnet_delayed_run);
}
