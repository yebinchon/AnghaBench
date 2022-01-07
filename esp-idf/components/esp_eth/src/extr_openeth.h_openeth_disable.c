
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENETH_INT_MASK_REG ;
 int OPENETH_INT_RXB ;
 int OPENETH_MODER_REG ;
 int OPENETH_PRO ;
 int OPENETH_RXEN ;
 int OPENETH_TXEN ;
 int REG_CLR_BIT (int ,int) ;

__attribute__((used)) static inline void openeth_disable(void)
{
    REG_CLR_BIT(OPENETH_INT_MASK_REG, OPENETH_INT_RXB);
    REG_CLR_BIT(OPENETH_MODER_REG, OPENETH_TXEN | OPENETH_RXEN | OPENETH_PRO);
}
