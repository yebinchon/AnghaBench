
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENETH_DESC_CNT ;
 int OPENETH_TX_BD_NUM_REG ;
 int REG_WRITE (int ,int) ;
 int assert (int) ;

__attribute__((used)) static inline void openeth_set_tx_desc_cnt(int tx_desc_cnt)
{
    assert(tx_desc_cnt <= OPENETH_DESC_CNT);
    REG_WRITE(OPENETH_TX_BD_NUM_REG, tx_desc_cnt);
}
