
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int esp_slave_context_t ;
typedef int esp_err_t ;


 int ESP_LOGV (int ,char*,int ) ;
 scalar_t__ HOST_SLCHOST_CONF_W7_REG ;
 int TAG ;
 int esp_slave_write_byte (int *,scalar_t__,int ,int *) ;

esp_err_t esp_slave_send_slave_intr(esp_slave_context_t *context, uint8_t intr_mask)
{
    ESP_LOGV(TAG, "send_slave_intr: %02x", intr_mask);
    return esp_slave_write_byte(context, HOST_SLCHOST_CONF_W7_REG+0, intr_mask, ((void*)0));
}
