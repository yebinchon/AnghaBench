
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int clk_speed; } ;
struct TYPE_5__ {TYPE_1__ master; int scl_pullup_en; int scl_io_num; int sda_pullup_en; int sda_io_num; int mode; } ;
typedef TYPE_2__ i2c_config_t ;
typedef int esp_err_t ;


 int GPIO_PULLUP_ENABLE ;
 int I2C_MODE_MASTER ;
 int i2c_frequency ;
 int i2c_gpio_scl ;
 int i2c_gpio_sda ;
 int i2c_param_config (int ,TYPE_2__*) ;
 int i2c_port ;

__attribute__((used)) static esp_err_t i2c_master_driver_initialize(void)
{
    i2c_config_t conf = {
        .mode = I2C_MODE_MASTER,
        .sda_io_num = i2c_gpio_sda,
        .sda_pullup_en = GPIO_PULLUP_ENABLE,
        .scl_io_num = i2c_gpio_scl,
        .scl_pullup_en = GPIO_PULLUP_ENABLE,
        .master.clk_speed = i2c_frequency
    };
    return i2c_param_config(i2c_port, &conf);
}
