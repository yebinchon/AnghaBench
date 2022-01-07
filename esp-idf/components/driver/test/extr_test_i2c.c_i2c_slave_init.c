
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int slave_addr; int addr_10bit_en; } ;
struct TYPE_5__ {TYPE_1__ slave; int scl_pullup_en; int sda_pullup_en; int scl_io_num; int sda_io_num; int mode; } ;
typedef TYPE_2__ i2c_config_t ;


 int ESP_SLAVE_ADDR ;
 int GPIO_PULLUP_ENABLE ;
 int I2C_MODE_SLAVE ;
 int I2C_SLAVE_SCL_IO ;
 int I2C_SLAVE_SDA_IO ;

__attribute__((used)) static i2c_config_t i2c_slave_init(void)
{
    i2c_config_t conf_slave = {
        .mode = I2C_MODE_SLAVE,
        .sda_io_num = I2C_SLAVE_SDA_IO,
        .scl_io_num = I2C_SLAVE_SCL_IO,
  .sda_pullup_en = GPIO_PULLUP_ENABLE,
     .scl_pullup_en = GPIO_PULLUP_ENABLE,
        .slave.addr_10bit_en = 0,
        .slave.slave_addr = ESP_SLAVE_ADDR,
    };
    return conf_slave;
}
