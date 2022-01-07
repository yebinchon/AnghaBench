
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spi_slave_transaction_t ;


 int GPIO_HANDSHAKE ;
 int GPIO_OUT_W1TS_REG ;
 int WRITE_PERI_REG (int ,int) ;

void my_post_setup_cb(spi_slave_transaction_t *trans) {
    WRITE_PERI_REG(GPIO_OUT_W1TS_REG, (1<<GPIO_HANDSHAKE));
}
