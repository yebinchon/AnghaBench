
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 scalar_t__ PZERO ;
 int * TAILQ_FIRST (int *) ;
 int VERIFY (int ) ;
 int dlil_if_lock () ;
 int dlil_if_lock_assert () ;
 int dlil_if_unlock () ;
 int dlil_ifnet_lock ;
 int ifnet_delayed_run ;
 int ifnet_detach_final (struct ifnet*) ;
 scalar_t__ ifnet_detaching_cnt ;
 struct ifnet* ifnet_detaching_dequeue () ;
 int ifnet_detaching_head ;
 int msleep0 (int *,int *,scalar_t__,char*,int ,int (*) (int)) ;

__attribute__((used)) static int
ifnet_detacher_thread_cont(int err)
{
#pragma unused(err)
 struct ifnet *ifp;

 for (;;) {
  dlil_if_lock_assert();
  while (ifnet_detaching_cnt == 0) {
   (void) msleep0(&ifnet_delayed_run, &dlil_ifnet_lock,
       (PZERO - 1), "ifnet_detacher_cont", 0,
       ifnet_detacher_thread_cont);

  }

  VERIFY(TAILQ_FIRST(&ifnet_detaching_head) != ((void*)0));


  ifp = ifnet_detaching_dequeue();
  if (ifp != ((void*)0)) {
   dlil_if_unlock();
   ifnet_detach_final(ifp);
   dlil_if_lock();
  }
 }
}
