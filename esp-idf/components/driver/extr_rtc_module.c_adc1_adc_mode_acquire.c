
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_5__ {scalar_t__ sar1_dig_force; } ;
struct TYPE_4__ {scalar_t__ sar1_dig_force; } ;
struct TYPE_6__ {TYPE_2__ sar_meas1_mux; TYPE_1__ sar_read_ctrl; } ;


 int ESP_LOGD (int ,char*) ;
 int ESP_OK ;
 int RTC_MODULE_TAG ;
 TYPE_3__ SENS ;
 int _lock_acquire (int *) ;
 int adc1_i2s_lock ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

esp_err_t adc1_adc_mode_acquire(void)
{


    _lock_acquire( &adc1_i2s_lock );
    ESP_LOGD( RTC_MODULE_TAG, "adc mode takes adc1 lock." );
    portENTER_CRITICAL(&rtc_spinlock);
    portEXIT_CRITICAL(&rtc_spinlock);
    return ESP_OK;
}
