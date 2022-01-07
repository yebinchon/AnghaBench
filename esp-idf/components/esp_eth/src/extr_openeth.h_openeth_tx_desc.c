
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int openeth_tx_desc_t ;


 scalar_t__ OPENETH_DESC_BASE ;
 int TX_BUF_COUNT ;
 int assert (int) ;

__attribute__((used)) static inline openeth_tx_desc_t* openeth_tx_desc(int idx)
{
    assert(idx < TX_BUF_COUNT);
    return &((openeth_tx_desc_t*)OPENETH_DESC_BASE)[idx];
}
