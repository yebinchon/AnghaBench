
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int slave_addr; scalar_t__ addr_10bit_en; } ;
struct TYPE_5__ {int mode; TYPE_1__ slave; void* scl_pullup_en; int scl_io_num; void* sda_pullup_en; int sda_io_num; } ;
typedef TYPE_2__ i2c_config_t ;
typedef int esp_err_t ;


 int ESP_SLAVE_ADDR ;
 void* GPIO_PULLUP_ENABLE ;
 int I2C_MODE_SLAVE ;
 int I2C_SLAVE_NUM ;
 int I2C_SLAVE_RX_BUF_LEN ;
 int I2C_SLAVE_SCL_IO ;
 int I2C_SLAVE_SDA_IO ;
 int I2C_SLAVE_TX_BUF_LEN ;
 int i2c_driver_install (int,int ,int ,int ,int ) ;
 int i2c_param_config (int,TYPE_2__*) ;

__attribute__((used)) static esp_err_t i2c_slave_init(void)
{
    int i2c_slave_port = I2C_SLAVE_NUM;
    i2c_config_t conf_slave;
    conf_slave.sda_io_num = I2C_SLAVE_SDA_IO;
    conf_slave.sda_pullup_en = GPIO_PULLUP_ENABLE;
    conf_slave.scl_io_num = I2C_SLAVE_SCL_IO;
    conf_slave.scl_pullup_en = GPIO_PULLUP_ENABLE;
    conf_slave.mode = I2C_MODE_SLAVE;
    conf_slave.slave.addr_10bit_en = 0;
    conf_slave.slave.slave_addr = ESP_SLAVE_ADDR;
    i2c_param_config(i2c_slave_port, &conf_slave);
    return i2c_driver_install(i2c_slave_port, conf_slave.mode,
                              I2C_SLAVE_RX_BUF_LEN,
                              I2C_SLAVE_TX_BUF_LEN, 0);
}
