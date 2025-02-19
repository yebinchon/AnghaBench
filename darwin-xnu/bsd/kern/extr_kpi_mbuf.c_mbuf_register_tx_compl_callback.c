
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mbuf_tx_compl_func ;
typedef scalar_t__ errno_t ;


 scalar_t__ EEXIST ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOSPC ;
 int MAX_MBUF_TX_COMPL_FUNC ;
 int get_tx_compl_callback_index_locked (int *) ;
 int lck_rw_lock_exclusive (int ) ;
 int lck_rw_unlock_exclusive (int ) ;
 int ** mbuf_tx_compl_table ;
 int mbuf_tx_compl_tbl_lock ;

errno_t
mbuf_register_tx_compl_callback(mbuf_tx_compl_func callback)
{
 int i;
 errno_t error;

 if (callback == ((void*)0))
  return (EINVAL);

 lck_rw_lock_exclusive(mbuf_tx_compl_tbl_lock);

 i = get_tx_compl_callback_index_locked(callback);
 if (i != -1) {
  error = EEXIST;
  goto unlock;
 }


 error = ENOSPC;
 for (i = 0; i < MAX_MBUF_TX_COMPL_FUNC; i++) {
  if (mbuf_tx_compl_table[i] == ((void*)0)) {
   mbuf_tx_compl_table[i] = callback;
   error = 0;
   goto unlock;
  }
 }
unlock:
 lck_rw_unlock_exclusive(mbuf_tx_compl_tbl_lock);

 return (error);
}
