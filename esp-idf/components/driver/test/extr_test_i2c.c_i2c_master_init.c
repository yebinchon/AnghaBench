
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int clk_speed; } ;
struct TYPE_5__ {int scl_io_num; int sda_io_num; TYPE_1__ master; int scl_pullup_en; int sda_pullup_en; int mode; } ;
typedef TYPE_2__ i2c_config_t ;


 int GPIO_PULLUP_ENABLE ;
 int I2C_MASTER_FREQ_HZ ;
 int I2C_MASTER_SCL_IO ;
 int I2C_MASTER_SDA_IO ;
 int I2C_MODE_MASTER ;

__attribute__((used)) static i2c_config_t i2c_master_init(void)
{
    i2c_config_t conf_master = {
        .mode = I2C_MODE_MASTER,
  .sda_pullup_en = GPIO_PULLUP_ENABLE,
  .scl_pullup_en = GPIO_PULLUP_ENABLE,
        .master.clk_speed = I2C_MASTER_FREQ_HZ,
        .sda_io_num = I2C_MASTER_SDA_IO,
        .scl_io_num = I2C_MASTER_SCL_IO,
    };
    return conf_master;
}
