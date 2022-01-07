
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ssid; int member_0; } ;
typedef TYPE_1__ wifi_scan_config_t ;
typedef int uint8_t ;


 int ESP_ERROR_CHECK (int ) ;
 int WIFI_MODE_STA ;
 int esp_wifi_scan_start (TYPE_1__*,int) ;
 int esp_wifi_set_mode (int ) ;

__attribute__((used)) static bool wifi_cmd_sta_scan(const char *ssid)
{
    wifi_scan_config_t scan_config = { 0 };
    scan_config.ssid = (uint8_t *) ssid;

    ESP_ERROR_CHECK( esp_wifi_set_mode(WIFI_MODE_STA) );
    ESP_ERROR_CHECK( esp_wifi_scan_start(&scan_config, 0) );

    return 1;
}
