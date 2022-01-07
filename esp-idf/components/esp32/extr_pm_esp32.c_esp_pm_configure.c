
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtc_cpu_freq_config_t ;
struct TYPE_2__ {int min_freq_mhz; int max_freq_mhz; scalar_t__ light_sleep_enable; } ;
typedef TYPE_1__ esp_pm_config_esp32_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_SUPPORTED ;
 int ESP_LOGI (int ,char*,int,int,int,char*) ;
 int ESP_LOGW (int ,char*,int) ;
 int ESP_OK ;
 int MAX (int,int) ;
 int MHZ ;
 size_t PM_MODE_APB_MAX ;
 size_t PM_MODE_APB_MIN ;
 size_t PM_MODE_CPU_MAX ;
 size_t PM_MODE_LIGHT_SLEEP ;
 int REF_CLK_DIV_MIN ;
 int REF_CLK_FREQ ;
 int TAG ;
 int portENTER_CRITICAL (int *) ;
 int portEXIT_CRITICAL (int *) ;
 int rtc_clk_cpu_freq_mhz_to_config (int,int *) ;
 scalar_t__ rtc_clk_xtal_freq_get () ;
 int s_config_changed ;
 int * s_cpu_freq_by_mode ;
 scalar_t__ s_light_sleep_en ;
 int s_switch_lock ;

esp_err_t esp_pm_configure(const void* vconfig)
{

    return ESP_ERR_NOT_SUPPORTED;


    const esp_pm_config_esp32_t* config = (const esp_pm_config_esp32_t*) vconfig;

    if (config->light_sleep_enable) {
        return ESP_ERR_NOT_SUPPORTED;
    }


    int min_freq_mhz = config->min_freq_mhz;
    int max_freq_mhz = config->max_freq_mhz;

    if (min_freq_mhz > max_freq_mhz) {
        return ESP_ERR_INVALID_ARG;
    }

    rtc_cpu_freq_config_t freq_config;
    if (!rtc_clk_cpu_freq_mhz_to_config(min_freq_mhz, &freq_config)) {
        ESP_LOGW(TAG, "invalid min_freq_mhz value (%d)", min_freq_mhz);
        return ESP_ERR_INVALID_ARG;
    }

    int xtal_freq_mhz = (int) rtc_clk_xtal_freq_get();
    if (min_freq_mhz < xtal_freq_mhz && min_freq_mhz * MHZ / REF_CLK_FREQ < REF_CLK_DIV_MIN) {
        ESP_LOGW(TAG, "min_freq_mhz should be >= %d", REF_CLK_FREQ * REF_CLK_DIV_MIN / MHZ);
        return ESP_ERR_INVALID_ARG;
    }

    if (!rtc_clk_cpu_freq_mhz_to_config(max_freq_mhz, &freq_config)) {
        ESP_LOGW(TAG, "invalid max_freq_mhz value (%d)", max_freq_mhz);
        return ESP_ERR_INVALID_ARG;
    }

    int apb_max_freq = max_freq_mhz;
    if (max_freq_mhz == 240) {



        apb_max_freq = 240;
    } else if (max_freq_mhz == 160 || max_freq_mhz == 80) {



        apb_max_freq = 80;
    }

    apb_max_freq = MAX(apb_max_freq, min_freq_mhz);

    ESP_LOGI(TAG, "Frequency switching config: "
                  "CPU_MAX: %d, APB_MAX: %d, APB_MIN: %d, Light sleep: %s",
                  max_freq_mhz,
                  apb_max_freq,
                  min_freq_mhz,
                  config->light_sleep_enable ? "ENABLED" : "DISABLED");

    portENTER_CRITICAL(&s_switch_lock);
    rtc_clk_cpu_freq_mhz_to_config(max_freq_mhz, &s_cpu_freq_by_mode[PM_MODE_CPU_MAX]);
    rtc_clk_cpu_freq_mhz_to_config(apb_max_freq, &s_cpu_freq_by_mode[PM_MODE_APB_MAX]);
    rtc_clk_cpu_freq_mhz_to_config(min_freq_mhz, &s_cpu_freq_by_mode[PM_MODE_APB_MIN]);
    s_cpu_freq_by_mode[PM_MODE_LIGHT_SLEEP] = s_cpu_freq_by_mode[PM_MODE_APB_MIN];
    s_light_sleep_en = config->light_sleep_enable;
    s_config_changed = 1;
    portEXIT_CRITICAL(&s_switch_lock);

    return ESP_OK;
}
