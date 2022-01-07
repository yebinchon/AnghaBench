
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int rx_got_bytes; } ;
typedef TYPE_1__ esp_slave_context_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGV (int ,char*,int) ;
 scalar_t__ ESP_OK ;
 int HOST_SLCHOST_PKT_LEN_REG ;
 int RX_BYTE_MASK ;
 int RX_BYTE_MAX ;
 int TAG ;
 scalar_t__ esp_slave_read_bytes (TYPE_1__*,int ,int *,int) ;

esp_err_t esp_slave_get_rx_data_size(esp_slave_context_t *context, uint32_t* rx_size)
{
    uint32_t len;
    esp_err_t err;

    ESP_LOGV(TAG, "get_rx_data_size: got_bytes: %d", context->rx_got_bytes);
    err = esp_slave_read_bytes(context, HOST_SLCHOST_PKT_LEN_REG, (uint8_t*)&len, 4);
    if (err != ESP_OK) return err;
    len &= RX_BYTE_MASK;
    len = (len + RX_BYTE_MAX - context->rx_got_bytes)%RX_BYTE_MAX;
    *rx_size = len;
    return ESP_OK;
}
