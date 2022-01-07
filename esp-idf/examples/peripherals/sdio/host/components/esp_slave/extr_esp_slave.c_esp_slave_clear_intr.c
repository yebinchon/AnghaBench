
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int esp_slave_context_t ;
typedef int esp_err_t ;


 int ESP_LOGV (int ,char*,int ) ;
 int HOST_SLC0HOST_INT_CLR_REG ;
 int TAG ;
 int esp_slave_write_bytes (int *,int ,int *,int) ;

esp_err_t esp_slave_clear_intr(esp_slave_context_t *context, uint32_t intr_mask)
{
    ESP_LOGV(TAG, "clear_intr: %08X", intr_mask);
    return esp_slave_write_bytes(context, HOST_SLC0HOST_INT_CLR_REG, (uint8_t*)&intr_mask, 4);
}
