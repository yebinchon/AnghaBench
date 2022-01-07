
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int32_t ;
typedef int * mbuf_tx_compl_func ;


 int ASSERT (int ) ;
 size_t MAX_MBUF_TX_COMPL_FUNC ;
 int lck_rw_lock_shared (int ) ;
 int lck_rw_unlock_shared (int ) ;
 int ** mbuf_tx_compl_table ;
 int mbuf_tx_compl_tbl_lock ;

mbuf_tx_compl_func
m_get_tx_compl_callback(u_int32_t idx)
{
 mbuf_tx_compl_func cb;

 if (idx >= MAX_MBUF_TX_COMPL_FUNC) {
  ASSERT(0);
  return (((void*)0));
 }
 lck_rw_lock_shared(mbuf_tx_compl_tbl_lock);
 cb = mbuf_tx_compl_table[idx];
 lck_rw_unlock_shared(mbuf_tx_compl_tbl_lock);
 return (cb);
}
