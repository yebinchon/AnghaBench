
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i2c_port_t ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_LOGE (int ,char*,int) ;
 int ESP_OK ;
 int I2C_NUM_0 ;
 int I2C_NUM_1 ;
 int I2C_NUM_MAX ;
 int TAG ;

__attribute__((used)) static esp_err_t i2c_get_port(int port, i2c_port_t *i2c_port)
{
    if (port >= I2C_NUM_MAX) {
        ESP_LOGE(TAG, "Wrong port number: %d", port);
        return ESP_FAIL;
    }
    switch (port) {
    case 0:
        *i2c_port = I2C_NUM_0;
        break;
    case 1:
        *i2c_port = I2C_NUM_1;
        break;
    default:
        *i2c_port = I2C_NUM_0;
        break;
    }
    return ESP_OK;
}
