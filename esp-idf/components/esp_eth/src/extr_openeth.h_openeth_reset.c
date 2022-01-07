
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENETH_MODER_REG ;
 int OPENETH_RST ;
 int REG_CLR_BIT (int ,int ) ;
 int REG_SET_BIT (int ,int ) ;

__attribute__((used)) static inline void openeth_reset(void)
{
    REG_SET_BIT(OPENETH_MODER_REG, OPENETH_RST);
    REG_CLR_BIT(OPENETH_MODER_REG, OPENETH_RST);
}
