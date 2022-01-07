
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_9__ {int sar1_dig_force; } ;
struct TYPE_8__ {void* force_xpd_sar; } ;
struct TYPE_7__ {int sar1_dig_force; } ;
struct TYPE_6__ {void* force_xpd_sar; } ;
struct TYPE_10__ {TYPE_4__ sar_meas1_mux; TYPE_3__ sar_power_xpd_sar; TYPE_2__ sar_read_ctrl; TYPE_1__ sar_meas_wait2; } ;


 int ESP_LOGD (int ,char*) ;
 int ESP_OK ;
 int RTC_MODULE_TAG ;
 TYPE_5__ SENS ;
 void* SENS_FORCE_XPD_SAR_PU ;
 int _lock_acquire (int *) ;
 int adc1_i2s_lock ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_spinlock ;

esp_err_t adc1_i2s_mode_acquire(void)
{


    _lock_acquire( &adc1_i2s_lock );
    ESP_LOGD( RTC_MODULE_TAG, "i2s mode takes adc1 lock." );
    portENTER_CRITICAL(&rtc_spinlock);
    portEXIT_CRITICAL(&rtc_spinlock);
    return ESP_OK;
}
