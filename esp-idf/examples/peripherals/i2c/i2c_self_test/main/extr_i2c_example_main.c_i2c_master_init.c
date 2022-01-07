
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int clk_speed; } ;
struct TYPE_5__ {int mode; TYPE_1__ master; void* scl_pullup_en; int scl_io_num; void* sda_pullup_en; int sda_io_num; } ;
typedef TYPE_2__ i2c_config_t ;
typedef int esp_err_t ;


 void* GPIO_PULLUP_ENABLE ;
 int I2C_MASTER_FREQ_HZ ;
 int I2C_MASTER_NUM ;
 int I2C_MASTER_RX_BUF_DISABLE ;
 int I2C_MASTER_SCL_IO ;
 int I2C_MASTER_SDA_IO ;
 int I2C_MASTER_TX_BUF_DISABLE ;
 int I2C_MODE_MASTER ;
 int i2c_driver_install (int,int ,int ,int ,int ) ;
 int i2c_param_config (int,TYPE_2__*) ;

__attribute__((used)) static esp_err_t i2c_master_init(void)
{
    int i2c_master_port = I2C_MASTER_NUM;
    i2c_config_t conf;
    conf.mode = I2C_MODE_MASTER;
    conf.sda_io_num = I2C_MASTER_SDA_IO;
    conf.sda_pullup_en = GPIO_PULLUP_ENABLE;
    conf.scl_io_num = I2C_MASTER_SCL_IO;
    conf.scl_pullup_en = GPIO_PULLUP_ENABLE;
    conf.master.clk_speed = I2C_MASTER_FREQ_HZ;
    i2c_param_config(i2c_master_port, &conf);
    return i2c_driver_install(i2c_master_port, conf.mode,
                              I2C_MASTER_RX_BUF_DISABLE,
                              I2C_MASTER_TX_BUF_DISABLE, 0);
}
