
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t i2s_port_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int val; } ;
struct TYPE_4__ {TYPE_1__ int_clr; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_2__** I2S ;
 int I2S_CHECK (int,char*,int ) ;
 size_t I2S_NUM_MAX ;

esp_err_t i2s_clear_intr_status(i2s_port_t i2s_num, uint32_t clr_mask)
{
    I2S_CHECK((i2s_num < I2S_NUM_MAX), "i2s_num error", ESP_ERR_INVALID_ARG);
    I2S[i2s_num]->int_clr.val = clr_mask;
    return ESP_OK;
}
