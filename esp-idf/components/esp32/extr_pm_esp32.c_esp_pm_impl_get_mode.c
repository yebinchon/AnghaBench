
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pm_mode_t ;
typedef scalar_t__ esp_pm_lock_type_t ;


 scalar_t__ ESP_PM_APB_FREQ_MAX ;
 scalar_t__ ESP_PM_CPU_FREQ_MAX ;
 scalar_t__ ESP_PM_NO_LIGHT_SLEEP ;
 int PM_MODE_APB_MAX ;
 int PM_MODE_APB_MIN ;
 int PM_MODE_CPU_MAX ;
 int abort () ;

pm_mode_t esp_pm_impl_get_mode(esp_pm_lock_type_t type, int arg)
{
    (void) arg;
    if (type == ESP_PM_CPU_FREQ_MAX) {
        return PM_MODE_CPU_MAX;
    } else if (type == ESP_PM_APB_FREQ_MAX) {
        return PM_MODE_APB_MAX;
    } else if (type == ESP_PM_NO_LIGHT_SLEEP) {
        return PM_MODE_APB_MIN;
    } else {

        abort();
    }
}
