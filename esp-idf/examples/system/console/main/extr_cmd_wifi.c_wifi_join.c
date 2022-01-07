
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ password; scalar_t__ ssid; } ;
struct TYPE_5__ {TYPE_1__ sta; int member_0; } ;
typedef TYPE_2__ wifi_config_t ;


 int CONNECTED_BIT ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_IF_WIFI_STA ;
 int WIFI_MODE_STA ;
 int esp_wifi_connect () ;
 int esp_wifi_set_config (int ,TYPE_2__*) ;
 int esp_wifi_set_mode (int ) ;
 int initialise_wifi () ;
 int pdFALSE ;
 int pdTRUE ;
 int portTICK_PERIOD_MS ;
 int strlcpy (char*,char const*,int) ;
 int wifi_event_group ;
 int xEventGroupWaitBits (int ,int,int ,int ,int) ;

__attribute__((used)) static bool wifi_join(const char *ssid, const char *pass, int timeout_ms)
{
    initialise_wifi();
    wifi_config_t wifi_config = { 0 };
    strlcpy((char *) wifi_config.sta.ssid, ssid, sizeof(wifi_config.sta.ssid));
    if (pass) {
        strlcpy((char *) wifi_config.sta.password, pass, sizeof(wifi_config.sta.password));
    }

    ESP_ERROR_CHECK( esp_wifi_set_mode(WIFI_MODE_STA) );
    ESP_ERROR_CHECK( esp_wifi_set_config(ESP_IF_WIFI_STA, &wifi_config) );
    ESP_ERROR_CHECK( esp_wifi_connect() );

    int bits = xEventGroupWaitBits(wifi_event_group, CONNECTED_BIT,
                                   pdFALSE, pdTRUE, timeout_ms / portTICK_PERIOD_MS);
    return (bits & CONNECTED_BIT) != 0;
}
