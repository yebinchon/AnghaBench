
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flowadv_fcentry {int dummy; } ;
typedef int caddr_t ;


 int STAILQ_EMPTY (int *) ;
 int STAILQ_INSERT_HEAD (int *,struct flowadv_fcentry*,int ) ;
 scalar_t__ THREAD_NULL ;
 int VERIFY (int) ;
 int fadv_active ;
 int fadv_list ;
 int fadv_lock ;
 scalar_t__ fadv_thread ;
 int fce_link ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int wakeup_one (int ) ;

void
flowadv_add_entry(struct flowadv_fcentry *fce) {
 lck_mtx_lock_spin(&fadv_lock);
 STAILQ_INSERT_HEAD(&fadv_list, fce, fce_link);
 VERIFY(!STAILQ_EMPTY(&fadv_list));

 if (!fadv_active && fadv_thread != THREAD_NULL)
  wakeup_one((caddr_t)&fadv_list);

 lck_mtx_unlock(&fadv_lock);
}
