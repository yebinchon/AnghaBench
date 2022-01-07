
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_err_t ;
typedef scalar_t__ adc_unit_t ;
struct TYPE_3__ {int work_mode; int sar_sel; } ;
struct TYPE_4__ {TYPE_1__ saradc_ctrl; } ;


 scalar_t__ ADC_UNIT_1 ;
 scalar_t__ ADC_UNIT_2 ;
 scalar_t__ ADC_UNIT_ALTER ;
 scalar_t__ ADC_UNIT_BOTH ;
 int ESP_OK ;
 TYPE_2__ SYSCON ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

__attribute__((used)) static esp_err_t adc_set_work_mode(adc_unit_t adc_unit)
{
    portENTER_CRITICAL(&rtc_spinlock);
    if (adc_unit == ADC_UNIT_1) {

        SYSCON.saradc_ctrl.work_mode = 0;

        SYSCON.saradc_ctrl.sar_sel = 0;
    } else if (adc_unit == ADC_UNIT_2) {

        SYSCON.saradc_ctrl.work_mode = 0;

        SYSCON.saradc_ctrl.sar_sel = 1;
    } else if (adc_unit == ADC_UNIT_BOTH) {

        SYSCON.saradc_ctrl.work_mode = 1;
    } else if (adc_unit == ADC_UNIT_ALTER) {

        SYSCON.saradc_ctrl.work_mode = 2;
    }
    portEXIT_CRITICAL(&rtc_spinlock);
    return ESP_OK;
}
