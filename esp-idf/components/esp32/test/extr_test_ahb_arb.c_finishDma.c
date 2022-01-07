
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEAR_PERI_REG_MASK (int ,int) ;
 int I2S_CONF_REG (int ) ;
 int I2S_DSCR_EN ;
 int I2S_FIFO_CONF_REG (int ) ;
 int I2S_INLINK_START ;
 int I2S_INT_RAW_REG (int ) ;
 int I2S_OUTLINK_START ;
 int I2S_OUT_LINK_REG (int ) ;
 int I2S_RX_FIFO_RESET ;
 int I2S_RX_RESET ;
 int I2S_RX_START ;
 int I2S_STATE_REG (int ) ;
 int I2S_TX_FIFO_RESET ;
 int I2S_TX_FIFO_RESET_BACK ;
 int I2S_TX_IDLE ;
 int I2S_TX_REMPTY_INT_RAW ;
 int I2S_TX_RESET ;
 int I2S_TX_START ;
 int READ_PERI_REG (int ) ;
 int SET_PERI_REG_MASK (int ,int) ;

__attribute__((used)) static void finishDma(void)
{

    if (!(READ_PERI_REG(I2S_FIFO_CONF_REG(0))&I2S_DSCR_EN)) {
        return;
    }


    while (!(READ_PERI_REG(I2S_INT_RAW_REG(0))&I2S_TX_REMPTY_INT_RAW)) ;



    while (!(READ_PERI_REG(I2S_STATE_REG(0))&I2S_TX_IDLE));


    CLEAR_PERI_REG_MASK(I2S_CONF_REG(0), I2S_TX_START | I2S_RX_START);
    CLEAR_PERI_REG_MASK(I2S_OUT_LINK_REG(0), I2S_OUTLINK_START | I2S_INLINK_START);

    SET_PERI_REG_MASK(I2S_CONF_REG(0), I2S_TX_RESET | I2S_TX_FIFO_RESET | I2S_RX_RESET | I2S_RX_FIFO_RESET);
    CLEAR_PERI_REG_MASK(I2S_CONF_REG(0), I2S_TX_RESET | I2S_TX_FIFO_RESET | I2S_RX_RESET | I2S_RX_FIFO_RESET);


    while ((READ_PERI_REG(I2S_STATE_REG(0))&I2S_TX_FIFO_RESET_BACK));
}
