
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ref_count; int rw_lock; } ;
typedef TYPE_1__ cl_direct_read_lock_t ;


 int FREE (TYPE_1__*,int ) ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 int M_TEMP ;
 int chain ;
 int cl_direct_read_spin_lock ;
 int cl_mtx_grp ;
 int lck_rw_destroy (int *,int ) ;
 int lck_rw_done (int *) ;
 int lck_spin_lock (int *) ;
 int lck_spin_unlock (int *) ;

void cluster_unlock_direct_read(cl_direct_read_lock_t *lck)
{
 lck_rw_done(&lck->rw_lock);

 lck_spin_lock(&cl_direct_read_spin_lock);
 if (lck->ref_count == 1) {
  LIST_REMOVE(lck, chain);
  lck_spin_unlock(&cl_direct_read_spin_lock);
  lck_rw_destroy(&lck->rw_lock, cl_mtx_grp);
  FREE(lck, M_TEMP);
 } else {
  --lck->ref_count;
  lck_spin_unlock(&cl_direct_read_spin_lock);
 }
}
