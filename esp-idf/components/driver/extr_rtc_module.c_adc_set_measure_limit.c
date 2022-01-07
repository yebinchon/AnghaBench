
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int meas_num_limit; int max_meas_num; } ;
struct TYPE_4__ {TYPE_1__ saradc_ctrl2; } ;


 int ESP_OK ;
 TYPE_2__ SYSCON ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

__attribute__((used)) static esp_err_t adc_set_measure_limit(uint8_t meas_num, bool lim_en)
{
    portENTER_CRITICAL(&rtc_spinlock);

    SYSCON.saradc_ctrl2.max_meas_num = meas_num;

    SYSCON.saradc_ctrl2.meas_num_limit = lim_en;
    portEXIT_CRITICAL(&rtc_spinlock);
    return ESP_OK;
}
