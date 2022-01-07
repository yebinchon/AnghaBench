
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int c_list_lock ;
 int c_swappedout_list_head ;
 int c_swappedout_sparse_list_head ;
 int do_fastwake_warmup (int *,int ) ;
 int fastwake_warmup ;
 int lck_mtx_lock_spin_always (int ) ;
 int lck_mtx_unlock_always (int ) ;
 scalar_t__ queue_empty (int *) ;

void
do_fastwake_warmup_all(void)
{

 lck_mtx_lock_spin_always(c_list_lock);

 if (queue_empty(&c_swappedout_list_head) && queue_empty(&c_swappedout_sparse_list_head)) {

  lck_mtx_unlock_always(c_list_lock);
  return;
 }

 fastwake_warmup = TRUE;

 do_fastwake_warmup(&c_swappedout_list_head, TRUE);

 do_fastwake_warmup(&c_swappedout_sparse_list_head, TRUE);

 fastwake_warmup = FALSE;

 lck_mtx_unlock_always(c_list_lock);

}
