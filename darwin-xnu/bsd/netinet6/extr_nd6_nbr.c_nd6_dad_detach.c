
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifaddr {int dummy; } ;
struct TYPE_2__ {int * tqe_prev; int * tqe_next; } ;
struct dadq {int dad_attached; TYPE_1__ dad_list; struct ifaddr* dad_ifa; } ;


 int DAD_LOCK (struct dadq*) ;
 int DAD_REMREF (struct dadq*) ;
 int DAD_UNLOCK (struct dadq*) ;
 int TAILQ_REMOVE (int *,struct dadq*,int ) ;
 int VERIFY (int) ;
 int dad6_mutex ;
 int dad_list ;
 int dadq ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;

__attribute__((used)) static void
nd6_dad_detach(struct dadq *dp, struct ifaddr *ifa)
{
 int detached;

 lck_mtx_lock(dad6_mutex);
 DAD_LOCK(dp);
 if ((detached = dp->dad_attached)) {
  VERIFY(dp->dad_ifa == ifa);
  TAILQ_REMOVE(&dadq, (struct dadq *)dp, dad_list);
  dp->dad_list.tqe_next = ((void*)0);
  dp->dad_list.tqe_prev = ((void*)0);
  dp->dad_attached = 0;
 }
 DAD_UNLOCK(dp);
 lck_mtx_unlock(dad6_mutex);
 if (detached) {
  DAD_REMREF(dp);
 }
}
