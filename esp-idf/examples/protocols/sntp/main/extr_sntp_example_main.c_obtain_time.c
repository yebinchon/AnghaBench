
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int member_0; } ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*,int,int const) ;
 scalar_t__ SNTP_SYNC_STATUS_RESET ;
 int TAG ;
 int esp_event_loop_create_default () ;
 int esp_netif_init () ;
 int example_connect () ;
 int example_disconnect () ;
 int initialize_sntp () ;
 int localtime_r (int *,struct tm*) ;
 int nvs_flash_init () ;
 int portTICK_PERIOD_MS ;
 scalar_t__ sntp_get_sync_status () ;
 int time (int *) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void obtain_time(void)
{
    ESP_ERROR_CHECK( nvs_flash_init() );
    esp_netif_init();
    ESP_ERROR_CHECK( esp_event_loop_create_default() );





    ESP_ERROR_CHECK(example_connect());

    initialize_sntp();


    time_t now = 0;
    struct tm timeinfo = { 0 };
    int retry = 0;
    const int retry_count = 10;
    while (sntp_get_sync_status() == SNTP_SYNC_STATUS_RESET && ++retry < retry_count) {
        ESP_LOGI(TAG, "Waiting for system time to be set... (%d/%d)", retry, retry_count);
        vTaskDelay(2000 / portTICK_PERIOD_MS);
    }
    time(&now);
    localtime_r(&now, &timeinfo);

    ESP_ERROR_CHECK( example_disconnect() );
}
