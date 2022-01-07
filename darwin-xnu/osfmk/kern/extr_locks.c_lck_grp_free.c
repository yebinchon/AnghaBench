
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int queue_entry_t ;
typedef int lck_grp_t ;


 int lck_grp_cnt ;
 int lck_grp_deallocate (int *) ;
 int lck_grp_lock ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int remque (int ) ;

void
lck_grp_free(
 lck_grp_t *grp)
{
 lck_mtx_lock(&lck_grp_lock);
 lck_grp_cnt--;
 (void)remque((queue_entry_t)grp);
 lck_mtx_unlock(&lck_grp_lock);
 lck_grp_deallocate(grp);
}
