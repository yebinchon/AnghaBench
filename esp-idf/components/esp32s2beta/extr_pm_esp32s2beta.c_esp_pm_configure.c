
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t rtc_cpu_freq_t ;
struct TYPE_2__ {scalar_t__ min_cpu_freq; size_t max_cpu_freq; scalar_t__ light_sleep_enable; } ;
typedef TYPE_1__ esp_pm_config_esp32_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_LOGI (int ,char*,int ,int ,int ,char*) ;
 int ESP_OK ;
 size_t PM_MODE_APB_MAX ;
 size_t PM_MODE_APB_MIN ;
 size_t PM_MODE_CPU_MAX ;
 size_t PM_MODE_LIGHT_SLEEP ;
 size_t RTC_CPU_FREQ_160M ;
 size_t RTC_CPU_FREQ_240M ;
 scalar_t__ RTC_CPU_FREQ_2M ;
 size_t RTC_CPU_FREQ_80M ;
 int TAG ;
 size_t max_freq_of (size_t,size_t) ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_clk_cpu_freq_value (size_t) ;
 int s_config_changed ;
 size_t* s_cpu_freq_by_mode ;
 int * s_freq_names ;
 scalar_t__ s_light_sleep_en ;
 int s_switch_lock ;

esp_err_t esp_pm_configure(const void* vconfig)
{

    return ESP_ERR_NOT_SUPPORTED;


    const esp_pm_config_esp32_t* config = (const esp_pm_config_esp32_t*) vconfig;

    if (config->light_sleep_enable) {
        return ESP_ERR_NOT_SUPPORTED;
    }


    if (config->min_cpu_freq == RTC_CPU_FREQ_2M) {

        return ESP_ERR_NOT_SUPPORTED;
    }

    rtc_cpu_freq_t min_freq = config->min_cpu_freq;
    rtc_cpu_freq_t max_freq = config->max_cpu_freq;
    int min_freq_mhz = rtc_clk_cpu_freq_value(min_freq);
    int max_freq_mhz = rtc_clk_cpu_freq_value(max_freq);
    if (min_freq_mhz > max_freq_mhz) {
        return ESP_ERR_INVALID_ARG;
    }

    rtc_cpu_freq_t apb_max_freq = max_freq;
    if (max_freq == RTC_CPU_FREQ_240M) {



        apb_max_freq = RTC_CPU_FREQ_240M;
    } else if (max_freq == RTC_CPU_FREQ_160M || max_freq == RTC_CPU_FREQ_80M) {



        apb_max_freq = RTC_CPU_FREQ_80M;
    }

    apb_max_freq = max_freq_of(apb_max_freq, min_freq);

    ESP_LOGI(TAG, "Frequency switching config: "
                  "CPU_MAX: %s, APB_MAX: %s, APB_MIN: %s, Light sleep: %s",
                  s_freq_names[max_freq],
                  s_freq_names[apb_max_freq],
                  s_freq_names[min_freq],
                  config->light_sleep_enable ? "ENABLED" : "DISABLED");

    portENTER_CRITICAL(&s_switch_lock);
    s_cpu_freq_by_mode[PM_MODE_CPU_MAX] = max_freq;
    s_cpu_freq_by_mode[PM_MODE_APB_MAX] = apb_max_freq;
    s_cpu_freq_by_mode[PM_MODE_APB_MIN] = min_freq;
    s_cpu_freq_by_mode[PM_MODE_LIGHT_SLEEP] = min_freq;
    s_light_sleep_en = config->light_sleep_enable;
    s_config_changed = 1;
    portEXIT_CRITICAL(&s_switch_lock);

    return ESP_OK;
}
