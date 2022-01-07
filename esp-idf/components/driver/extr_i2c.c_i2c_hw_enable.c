
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ i2c_port_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 scalar_t__ I2C_NUM_0 ;
 scalar_t__ I2C_NUM_1 ;
 int PERIPH_I2C0_MODULE ;
 int PERIPH_I2C1_MODULE ;
 int periph_module_enable (int ) ;

__attribute__((used)) static esp_err_t i2c_hw_enable(i2c_port_t i2c_num)
{
    if (i2c_num == I2C_NUM_0) {
        periph_module_enable(PERIPH_I2C0_MODULE);
    } else if (i2c_num == I2C_NUM_1) {
        periph_module_enable(PERIPH_I2C1_MODULE);
    }
    return ESP_OK;
}
