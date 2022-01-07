
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int sar_clk_div; } ;
struct TYPE_4__ {TYPE_1__ saradc_ctrl; } ;


 int ESP_OK ;
 TYPE_2__ SYSCON ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

esp_err_t adc_set_clk_div(uint8_t clk_div)
{
    portENTER_CRITICAL(&rtc_spinlock);

    SYSCON.saradc_ctrl.sar_clk_div = clk_div;
    portEXIT_CRITICAL(&rtc_spinlock);
    return ESP_OK;
}
