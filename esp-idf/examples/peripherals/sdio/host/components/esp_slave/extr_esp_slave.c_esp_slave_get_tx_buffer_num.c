
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int tx_sent_buffers; } ;
typedef TYPE_1__ esp_slave_context_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGV (int ,char*) ;
 scalar_t__ ESP_OK ;
 int HOST_SLC0HOST_TOKEN_RDATA_REG ;
 int TAG ;
 int TX_BUFFER_MASK ;
 int TX_BUFFER_MAX ;
 scalar_t__ esp_slave_read_bytes (TYPE_1__*,int ,int *,int) ;

esp_err_t esp_slave_get_tx_buffer_num(esp_slave_context_t *context, uint32_t* tx_num)
{
    uint32_t len;
    esp_err_t err;

    ESP_LOGV(TAG, "get_tx_buffer_num");
    err = esp_slave_read_bytes(context, HOST_SLC0HOST_TOKEN_RDATA_REG, (uint8_t*)&len, 4);
    if (err != ESP_OK) return err;
    len = (len>>16)&TX_BUFFER_MASK;
    len = (len + TX_BUFFER_MAX - context->tx_sent_buffers)%TX_BUFFER_MAX;
    *tx_num = len;
    return ESP_OK;
}
