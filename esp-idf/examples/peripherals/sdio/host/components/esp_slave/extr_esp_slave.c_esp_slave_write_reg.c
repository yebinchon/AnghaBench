
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int esp_slave_context_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGV (int ,char*,int) ;
 int HOST_SLCHOST_CONF_W_REG (int) ;
 int TAG ;
 int esp_slave_write_byte (int *,int ,int,int*) ;

esp_err_t esp_slave_write_reg(esp_slave_context_t *context, uint8_t addr, uint8_t value, uint8_t* value_o)
{
    ESP_LOGV(TAG, "write_reg: %08X", value);

    if (addr >= 64) return ESP_ERR_INVALID_ARG;

    if (addr >= 28 && addr <= 31) return ESP_ERR_INVALID_ARG;
    return esp_slave_write_byte(context, HOST_SLCHOST_CONF_W_REG(addr), value, value_o);
}
