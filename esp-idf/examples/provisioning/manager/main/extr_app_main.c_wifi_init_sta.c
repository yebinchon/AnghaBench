
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_ERROR_CHECK (int ) ;
 int WIFI_MODE_STA ;
 int esp_wifi_set_mode (int ) ;
 int esp_wifi_start () ;

__attribute__((used)) static void wifi_init_sta(void)
{

    ESP_ERROR_CHECK(esp_wifi_set_mode(WIFI_MODE_STA));
    ESP_ERROR_CHECK(esp_wifi_start());
}
