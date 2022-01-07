
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_err_t ;
typedef int adc_i2s_encode_t ;
struct TYPE_3__ {int data_sar_sel; } ;
struct TYPE_4__ {TYPE_1__ saradc_ctrl; } ;


 int ESP_OK ;
 TYPE_2__ SYSCON ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

__attribute__((used)) static esp_err_t adc_set_data_format(adc_i2s_encode_t mode)
{
    portENTER_CRITICAL(&rtc_spinlock);



    SYSCON.saradc_ctrl.data_sar_sel = mode;
    portEXIT_CRITICAL(&rtc_spinlock);
    return ESP_OK;
}
