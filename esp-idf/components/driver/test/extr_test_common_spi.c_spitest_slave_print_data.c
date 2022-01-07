
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; int tx_start; } ;
typedef TYPE_1__ slave_rxdata_t ;


 int ESP_LOGI (int ,char*,int) ;
 int ESP_LOG_BUFFER_HEX (char*,int ,int) ;
 int SLAVE_TAG ;

void spitest_slave_print_data(slave_rxdata_t *t, bool print_rxdata)
{
    int rcv_len = (t->len+7)/8;
    ESP_LOGI(SLAVE_TAG, "trans_len: %d", t->len);
    ESP_LOG_BUFFER_HEX("slave tx", t->tx_start, rcv_len);
    if (print_rxdata) ESP_LOG_BUFFER_HEX("slave rx", t->data, rcv_len);
}
