
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flowadv_fclist {int dummy; } ;
typedef int caddr_t ;


 int STAILQ_CONCAT (struct flowadv_fclist*,struct flowadv_fclist*) ;
 scalar_t__ STAILQ_EMPTY (struct flowadv_fclist*) ;
 scalar_t__ THREAD_NULL ;
 int VERIFY (int) ;
 int fadv_active ;
 struct flowadv_fclist fadv_list ;
 int fadv_lock ;
 scalar_t__ fadv_thread ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int wakeup_one (int ) ;

void
flowadv_add(struct flowadv_fclist *fcl)
{
 if (STAILQ_EMPTY(fcl))
  return;

 lck_mtx_lock_spin(&fadv_lock);

 STAILQ_CONCAT(&fadv_list, fcl);
 VERIFY(!STAILQ_EMPTY(&fadv_list));

 if (!fadv_active && fadv_thread != THREAD_NULL)
  wakeup_one((caddr_t)&fadv_list);

 lck_mtx_unlock(&fadv_lock);
}
