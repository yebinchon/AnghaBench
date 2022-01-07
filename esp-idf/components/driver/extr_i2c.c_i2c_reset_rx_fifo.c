
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t i2c_port_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int rx_fifo_rst; } ;
struct TYPE_4__ {TYPE_1__ fifo_conf; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_2__** I2C ;
 int I2C_CHECK (int,int ,int ) ;
 int I2C_ENTER_CRITICAL (int *) ;
 int I2C_EXIT_CRITICAL (int *) ;
 int I2C_NUM_ERROR_STR ;
 size_t I2C_NUM_MAX ;
 int * i2c_spinlock ;

esp_err_t i2c_reset_rx_fifo(i2c_port_t i2c_num)
{
    I2C_CHECK(i2c_num < I2C_NUM_MAX, I2C_NUM_ERROR_STR, ESP_ERR_INVALID_ARG);
    I2C_ENTER_CRITICAL(&i2c_spinlock[i2c_num]);
    I2C[i2c_num]->fifo_conf.rx_fifo_rst = 1;
    I2C[i2c_num]->fifo_conf.rx_fifo_rst = 0;
    I2C_EXIT_CRITICAL(&i2c_spinlock[i2c_num]);
    return ESP_OK;
}
