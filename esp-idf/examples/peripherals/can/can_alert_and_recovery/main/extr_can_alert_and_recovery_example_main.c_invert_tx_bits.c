
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAN_TX_IDX ;
 int TX_GPIO_NUM ;
 int gpio_matrix_out (int ,int ,int,int) ;

__attribute__((used)) static void invert_tx_bits(bool enable)
{
    if (enable) {

        gpio_matrix_out(TX_GPIO_NUM, CAN_TX_IDX, 1, 0);
    } else {

        gpio_matrix_out(TX_GPIO_NUM, CAN_TX_IDX, 0, 0);
    }
}
