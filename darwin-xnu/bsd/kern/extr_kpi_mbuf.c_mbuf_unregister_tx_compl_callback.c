
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mbuf_tx_compl_func ;
typedef scalar_t__ errno_t ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOENT ;
 int MAX_MBUF_TX_COMPL_FUNC ;
 int lck_rw_lock_exclusive (int ) ;
 int lck_rw_unlock_exclusive (int ) ;
 int ** mbuf_tx_compl_table ;
 int mbuf_tx_compl_tbl_lock ;

errno_t
mbuf_unregister_tx_compl_callback(mbuf_tx_compl_func callback)
{
 int i;
 errno_t error;

 if (callback == ((void*)0))
  return (EINVAL);

 lck_rw_lock_exclusive(mbuf_tx_compl_tbl_lock);


 error = ENOENT;
 for (i = 0; i < MAX_MBUF_TX_COMPL_FUNC; i++) {
  if (mbuf_tx_compl_table[i] == callback) {
   mbuf_tx_compl_table[i] = ((void*)0);
   error = 0;
   goto unlock;
  }
 }
unlock:
 lck_rw_unlock_exclusive(mbuf_tx_compl_tbl_lock);

 return (error);
}
