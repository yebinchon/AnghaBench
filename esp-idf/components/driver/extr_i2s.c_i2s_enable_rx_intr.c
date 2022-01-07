
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t i2s_port_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int in_suc_eof; int in_dscr_err; } ;
struct TYPE_4__ {TYPE_1__ int_ena; } ;


 int ESP_OK ;
 TYPE_2__** I2S ;
 int I2S_ENTER_CRITICAL () ;
 int I2S_EXIT_CRITICAL () ;

esp_err_t i2s_enable_rx_intr(i2s_port_t i2s_num)
{

    I2S_ENTER_CRITICAL();
    I2S[i2s_num]->int_ena.in_suc_eof = 1;
    I2S[i2s_num]->int_ena.in_dscr_err = 1;
    I2S_EXIT_CRITICAL();
    return ESP_OK;
}
