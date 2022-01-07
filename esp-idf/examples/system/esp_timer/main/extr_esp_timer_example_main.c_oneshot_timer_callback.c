
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int esp_timer_handle_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*,int ) ;
 int TAG ;
 int esp_timer_get_time () ;
 int esp_timer_start_periodic (int ,int) ;
 int esp_timer_stop (int ) ;

__attribute__((used)) static void oneshot_timer_callback(void* arg)
{
    int64_t time_since_boot = esp_timer_get_time();
    ESP_LOGI(TAG, "One-shot timer called, time since boot: %lld us", time_since_boot);
    esp_timer_handle_t periodic_timer_handle = (esp_timer_handle_t) arg;

    ESP_ERROR_CHECK(esp_timer_stop(periodic_timer_handle));
    ESP_ERROR_CHECK(esp_timer_start_periodic(periodic_timer_handle, 1000000));
    time_since_boot = esp_timer_get_time();
    ESP_LOGI(TAG, "Restarted periodic timer with 1s period, time since boot: %lld us",
            time_since_boot);
}
