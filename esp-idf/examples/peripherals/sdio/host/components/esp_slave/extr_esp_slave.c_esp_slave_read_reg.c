
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int esp_slave_context_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGV (int ,char*,...) ;
 int HOST_SLCHOST_CONF_W_REG (int) ;
 int TAG ;
 int esp_slave_read_byte (int *,int ,int*) ;

esp_err_t esp_slave_read_reg(esp_slave_context_t *context, uint8_t add, uint8_t *value_o)
{
    ESP_LOGV(TAG, "read_reg");

    if (add >= 64) return ESP_ERR_INVALID_ARG;
    esp_err_t ret = esp_slave_read_byte(context, HOST_SLCHOST_CONF_W_REG(add), value_o);
    ESP_LOGV(TAG, "reg: %08X", *value_o);
    return ret;
}
