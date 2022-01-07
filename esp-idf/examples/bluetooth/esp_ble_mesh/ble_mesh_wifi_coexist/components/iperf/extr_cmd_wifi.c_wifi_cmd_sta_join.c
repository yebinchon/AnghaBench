
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
 int DISCONNECTED_BIT ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_IF_WIFI_STA ;
 int esp_wifi_connect () ;
 int esp_wifi_disconnect () ;
 int esp_wifi_set_config (int ,TYPE_2__*) ;
 int portTICK_RATE_MS ;
 int reconnect ;
 int strlcpy (char*,char const*,int) ;
 int strncpy (char*,char const*,int) ;
 int wifi_event_group ;
 int xEventGroupClearBits (int ,int) ;
 int xEventGroupWaitBits (int ,int,int ,int,int) ;

__attribute__((used)) static bool wifi_cmd_sta_join(const char *ssid, const char *pass)
{
    int bits = xEventGroupWaitBits(wifi_event_group, CONNECTED_BIT, 0, 1, 0);

    wifi_config_t wifi_config = { 0 };

    strlcpy((char *) wifi_config.sta.ssid, ssid, sizeof(wifi_config.sta.ssid));
    if (pass) {
        strncpy((char *) wifi_config.sta.password, pass, sizeof(wifi_config.sta.password));
    }

    if (bits & CONNECTED_BIT) {
        reconnect = 0;
        xEventGroupClearBits(wifi_event_group, CONNECTED_BIT);
        ESP_ERROR_CHECK( esp_wifi_disconnect() );
        xEventGroupWaitBits(wifi_event_group, DISCONNECTED_BIT, 0, 1, portTICK_RATE_MS);
    }

    reconnect = 1;
    esp_wifi_disconnect();

    ESP_ERROR_CHECK( esp_wifi_set_config(ESP_IF_WIFI_STA, &wifi_config) );
    ESP_ERROR_CHECK( esp_wifi_connect() );

    xEventGroupWaitBits(wifi_event_group, CONNECTED_BIT, 0, 1, 5000 / portTICK_RATE_MS);

    return 1;
}
