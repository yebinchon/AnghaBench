
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nvs_enable; } ;
typedef TYPE_1__ wifi_init_config_t ;


 int EVENT_HANDLER_FLAG_DO_NOT_AUTO_RECONNECT ;
 int TEST_ESP_OK (int ) ;
 TYPE_1__ WIFI_INIT_CONFIG_DEFAULT () ;
 int WIFI_MODE_STA ;
 int esp_wifi_init (TYPE_1__*) ;
 int esp_wifi_set_mode (int ) ;
 int esp_wifi_start () ;
 int event_init () ;
 int unity_reset_leak_checks () ;
 int wifi_event_handler_flag ;
 int * wifi_events ;
 int xEventGroupClearBits (int *,int) ;
 int * xEventGroupCreate () ;

__attribute__((used)) static void start_wifi_as_sta(void)
{
    wifi_init_config_t cfg = WIFI_INIT_CONFIG_DEFAULT();
    cfg.nvs_enable = 0;


    wifi_event_handler_flag |= EVENT_HANDLER_FLAG_DO_NOT_AUTO_RECONNECT;
    event_init();


    unity_reset_leak_checks();

    if (wifi_events == ((void*)0)) {
        wifi_events = xEventGroupCreate();
    } else {
        xEventGroupClearBits(wifi_events, 0x00ffffff);
    }

    TEST_ESP_OK(esp_wifi_init(&cfg));
    TEST_ESP_OK(esp_wifi_set_mode(WIFI_MODE_STA));
    TEST_ESP_OK(esp_wifi_start());

}
