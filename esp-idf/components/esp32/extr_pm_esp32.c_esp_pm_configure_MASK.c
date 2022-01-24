#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtc_cpu_freq_config_t ;
struct TYPE_2__ {int min_freq_mhz; int max_freq_mhz; scalar_t__ light_sleep_enable; } ;
typedef  TYPE_1__ esp_pm_config_esp32_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int FUNC2 (int,int) ; 
 int MHZ ; 
 size_t PM_MODE_APB_MAX ; 
 size_t PM_MODE_APB_MIN ; 
 size_t PM_MODE_CPU_MAX ; 
 size_t PM_MODE_LIGHT_SLEEP ; 
 int REF_CLK_DIV_MIN ; 
 int REF_CLK_FREQ ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 int s_config_changed ; 
 int /*<<< orphan*/ * s_cpu_freq_by_mode ; 
 scalar_t__ s_light_sleep_en ; 
 int /*<<< orphan*/  s_switch_lock ; 

esp_err_t FUNC7(const void* vconfig)
{
#ifndef CONFIG_PM_ENABLE
    return ESP_ERR_NOT_SUPPORTED;
#endif

    const esp_pm_config_esp32_t* config = (const esp_pm_config_esp32_t*) vconfig;
#ifndef CONFIG_FREERTOS_USE_TICKLESS_IDLE
    if (config->light_sleep_enable) {
        return ESP_ERR_NOT_SUPPORTED;
    }
#endif

    int min_freq_mhz = config->min_freq_mhz;
    int max_freq_mhz = config->max_freq_mhz;

    if (min_freq_mhz > max_freq_mhz) {
        return ESP_ERR_INVALID_ARG;
    }

    rtc_cpu_freq_config_t freq_config;
    if (!FUNC5(min_freq_mhz, &freq_config)) {
        FUNC1(TAG, "invalid min_freq_mhz value (%d)", min_freq_mhz);
        return ESP_ERR_INVALID_ARG;
    }

    int xtal_freq_mhz = (int) FUNC6();
    if (min_freq_mhz < xtal_freq_mhz && min_freq_mhz * MHZ / REF_CLK_FREQ < REF_CLK_DIV_MIN) {
        FUNC1(TAG, "min_freq_mhz should be >= %d", REF_CLK_FREQ * REF_CLK_DIV_MIN / MHZ);
        return ESP_ERR_INVALID_ARG;
    }

    if (!FUNC5(max_freq_mhz, &freq_config)) {
        FUNC1(TAG, "invalid max_freq_mhz value (%d)", max_freq_mhz);
        return ESP_ERR_INVALID_ARG;
    }

    int apb_max_freq = max_freq_mhz; /* CPU frequency in APB_MAX mode */
    if (max_freq_mhz == 240) {
        /* We can't switch between 240 and 80/160 without disabling PLL,
         * so use 240MHz CPU frequency when 80MHz APB frequency is requested.
         */
        apb_max_freq = 240;
    } else if (max_freq_mhz == 160 || max_freq_mhz == 80) {
        /* Otherwise, can use 80MHz
         * CPU frequency when 80MHz APB frequency is requested.
         */
        apb_max_freq = 80;
    }

    apb_max_freq = FUNC2(apb_max_freq, min_freq_mhz);

    FUNC0(TAG, "Frequency switching config: "
                  "CPU_MAX: %d, APB_MAX: %d, APB_MIN: %d, Light sleep: %s",
                  max_freq_mhz,
                  apb_max_freq,
                  min_freq_mhz,
                  config->light_sleep_enable ? "ENABLED" : "DISABLED");

    FUNC3(&s_switch_lock);
    FUNC5(max_freq_mhz, &s_cpu_freq_by_mode[PM_MODE_CPU_MAX]);
    FUNC5(apb_max_freq, &s_cpu_freq_by_mode[PM_MODE_APB_MAX]);
    FUNC5(min_freq_mhz, &s_cpu_freq_by_mode[PM_MODE_APB_MIN]);
    s_cpu_freq_by_mode[PM_MODE_LIGHT_SLEEP] = s_cpu_freq_by_mode[PM_MODE_APB_MIN];
    s_light_sleep_en = config->light_sleep_enable;
    s_config_changed = true;
    FUNC4(&s_switch_lock);

    return ESP_OK;
}