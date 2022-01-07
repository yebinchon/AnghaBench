
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int esp_slave_context_t ;
typedef int esp_err_t ;


 int ESP_LOGV (int ,char*,...) ;
 int HOST_SLC0HOST_INT_ENA_REG ;
 int TAG ;
 int esp_slave_read_bytes (int *,int ,int *,int) ;

esp_err_t esp_slave_get_intr_ena(esp_slave_context_t *context, uint32_t *ena_mask_o)
{
    ESP_LOGV(TAG, "get_intr_ena");
    esp_err_t ret = esp_slave_read_bytes(context, HOST_SLC0HOST_INT_ENA_REG, (uint8_t*)ena_mask_o, 4);
    ESP_LOGV(TAG, "ena: %08X", *ena_mask_o);
    return ret;
}
