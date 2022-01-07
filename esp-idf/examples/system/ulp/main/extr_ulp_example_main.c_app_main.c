
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_sleep_wakeup_cause_t ;


 int ESP_ERROR_CHECK (int ) ;
 scalar_t__ ESP_SLEEP_WAKEUP_ULP ;
 int esp_deep_sleep_start () ;
 int esp_sleep_enable_ulp_wakeup () ;
 scalar_t__ esp_sleep_get_wakeup_cause () ;
 int init_ulp_program () ;
 int printf (char*) ;
 int update_pulse_count () ;

void app_main(void)
{
    esp_sleep_wakeup_cause_t cause = esp_sleep_get_wakeup_cause();
    if (cause != ESP_SLEEP_WAKEUP_ULP) {
        printf("Not ULP wakeup, initializing ULP\n");
        init_ulp_program();
    } else {
        printf("ULP wakeup, saving pulse count\n");
        update_pulse_count();
    }

    printf("Entering deep sleep\n\n");
    ESP_ERROR_CHECK( esp_sleep_enable_ulp_wakeup() );
    esp_deep_sleep_start();
}
