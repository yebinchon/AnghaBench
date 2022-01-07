
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int mbuf_tx_compl_func ;


 int get_tx_compl_callback_index_locked (int ) ;
 int lck_rw_lock_shared (int ) ;
 int lck_rw_unlock_shared (int ) ;
 int mbuf_tx_compl_tbl_lock ;

__attribute__((used)) static u_int32_t
get_tx_compl_callback_index(mbuf_tx_compl_func callback)
{
 u_int32_t i;

 lck_rw_lock_shared(mbuf_tx_compl_tbl_lock);

 i = get_tx_compl_callback_index_locked(callback);

 lck_rw_unlock_shared(mbuf_tx_compl_tbl_lock);

 return (i);
}
