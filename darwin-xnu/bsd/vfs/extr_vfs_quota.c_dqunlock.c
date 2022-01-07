
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dummy; } ;


 int dq_unlock_internal (struct dquot*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int quota_list_mtx_lock ;

void
dqunlock(struct dquot *dq) {

 lck_mtx_lock(quota_list_mtx_lock);

 dq_unlock_internal(dq);

 lck_mtx_unlock(quota_list_mtx_lock);
}
