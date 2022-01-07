
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {scalar_t__ if_poll_thread; int if_poll_lock; int if_poll_active; int if_poll_req; } ;
typedef int caddr_t ;


 scalar_t__ THREAD_NULL ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int wakeup_one (int ) ;

__attribute__((used)) static void
ifnet_poll(struct ifnet *ifp)
{



 lck_mtx_lock_spin(&ifp->if_poll_lock);
 ifp->if_poll_req++;
 if (!ifp->if_poll_active && ifp->if_poll_thread != THREAD_NULL) {
  wakeup_one((caddr_t)&ifp->if_poll_thread);
 }
 lck_mtx_unlock(&ifp->if_poll_lock);
}
