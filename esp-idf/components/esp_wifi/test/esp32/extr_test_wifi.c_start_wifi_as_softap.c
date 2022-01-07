
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nvs_enable; } ;
typedef TYPE_2__ wifi_init_config_t ;
struct TYPE_7__ {int channel; int ssid_hidden; int max_connection; int beacon_interval; int authmode; int ssid_len; int password; int ssid; } ;
struct TYPE_9__ {TYPE_1__ ap; } ;
typedef TYPE_3__ wifi_config_t ;


 int DEFAULT_PWD ;
 int DEFAULT_SSID ;
 int TEST_ESP_OK (int ) ;
 int WIFI_AUTH_WPA2_PSK ;
 int WIFI_IF_AP ;
 TYPE_2__ WIFI_INIT_CONFIG_DEFAULT () ;
 int WIFI_MODE_AP ;
 int esp_wifi_init (TYPE_2__*) ;
 int esp_wifi_set_config (int ,TYPE_3__*) ;
 int esp_wifi_set_mode (int ) ;
 int esp_wifi_start () ;
 int event_init () ;
 int unity_reset_leak_checks () ;
 int * wifi_events ;
 int * xEventGroupCreate () ;

__attribute__((used)) static void start_wifi_as_softap(void)
{
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    cfg.nvs_enable = 0;

    wifi_config_t w_config = {
        .ap.ssid = DEFAULT_SSID,
        .ap.password = DEFAULT_PWD,
        .ap.ssid_len = 0,
        .ap.channel = 1,
        .ap.authmode = WIFI_AUTH_WPA2_PSK,
        .ap.ssid_hidden = 0,
        .ap.max_connection = 4,
        .ap.beacon_interval = 100,
    };

    event_init();


    unity_reset_leak_checks();

    if (wifi_events == ((void*)0)) {
        wifi_events = xEventGroupCreate();
    }

    TEST_ESP_OK(esp_wifi_init(&cfg));
    TEST_ESP_OK(esp_wifi_set_mode(WIFI_MODE_AP));
    TEST_ESP_OK(esp_wifi_set_config(WIFI_IF_AP, &w_config));
    TEST_ESP_OK(esp_wifi_start());
}
