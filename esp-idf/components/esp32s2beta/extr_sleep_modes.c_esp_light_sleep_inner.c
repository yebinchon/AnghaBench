
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__ force; } ;
typedef TYPE_1__ rtc_vddsdio_config_t ;
typedef int esp_err_t ;


 int RTC_SLEEP_PD_VDDSDIO ;
 int esp_sleep_start (int) ;
 int ets_delay_us (int) ;
 int rtc_vddsdio_set_config (TYPE_1__) ;

__attribute__((used)) static esp_err_t esp_light_sleep_inner(uint32_t pd_flags,
        uint32_t flash_enable_time_us,
        rtc_vddsdio_config_t vddsdio_config)
{

    esp_err_t err = esp_sleep_start(pd_flags);



    if (vddsdio_config.force) {
        rtc_vddsdio_set_config(vddsdio_config);
    }


    if (pd_flags & RTC_SLEEP_PD_VDDSDIO) {

        ets_delay_us(flash_enable_time_us);
    }
    return err;
}
