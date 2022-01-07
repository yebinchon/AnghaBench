
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ESP_OK (int ) ;
 int esp_wifi_deinit () ;
 int esp_wifi_stop () ;
 int portTICK_PERIOD_MS ;
 int printf (char*) ;
 int vEventGroupDelete (int *) ;
 int vTaskDelay (int) ;
 int * wifi_events ;

__attribute__((used)) static void stop_wifi(void)
{
    printf("stop wifi\n");
    TEST_ESP_OK(esp_wifi_stop());
    TEST_ESP_OK(esp_wifi_deinit());
    if (wifi_events) {
        vEventGroupDelete(wifi_events);
        wifi_events = ((void*)0);
    }
    vTaskDelay(1000/portTICK_PERIOD_MS);
}
