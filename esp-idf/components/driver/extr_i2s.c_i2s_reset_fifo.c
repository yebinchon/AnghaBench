
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t i2s_port_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int rx_fifo_reset; int tx_fifo_reset; } ;
struct TYPE_4__ {TYPE_1__ conf; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_2__** I2S ;
 int I2S_CHECK (int,char*,int ) ;
 int I2S_ENTER_CRITICAL () ;
 int I2S_EXIT_CRITICAL () ;
 size_t I2S_NUM_MAX ;

__attribute__((used)) static esp_err_t i2s_reset_fifo(i2s_port_t i2s_num)
{
    I2S_CHECK((i2s_num < I2S_NUM_MAX), "i2s_num error", ESP_ERR_INVALID_ARG);
    I2S_ENTER_CRITICAL();
    I2S[i2s_num]->conf.rx_fifo_reset = 1;
    I2S[i2s_num]->conf.rx_fifo_reset = 0;
    I2S[i2s_num]->conf.tx_fifo_reset = 1;
    I2S[i2s_num]->conf.tx_fifo_reset = 0;
    I2S_EXIT_CRITICAL();
    return ESP_OK;
}
