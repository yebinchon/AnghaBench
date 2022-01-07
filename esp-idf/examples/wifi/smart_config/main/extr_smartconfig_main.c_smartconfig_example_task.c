
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smartconfig_start_config_t ;
typedef int EventBits_t ;


 int CONNECTED_BIT ;
 int ESPTOUCH_DONE_BIT ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*) ;
 int SC_TYPE_ESPTOUCH ;
 int SMARTCONFIG_START_CONFIG_DEFAULT () ;
 int TAG ;
 int esp_smartconfig_set_type (int ) ;
 int esp_smartconfig_start (int *) ;
 int esp_smartconfig_stop () ;
 int portMAX_DELAY ;
 int s_wifi_event_group ;
 int vTaskDelete (int *) ;
 int xEventGroupWaitBits (int ,int,int,int,int ) ;

__attribute__((used)) static void smartconfig_example_task(void * parm)
{
    EventBits_t uxBits;
    ESP_ERROR_CHECK( esp_smartconfig_set_type(SC_TYPE_ESPTOUCH) );
    smartconfig_start_config_t cfg = SMARTCONFIG_START_CONFIG_DEFAULT();
    ESP_ERROR_CHECK( esp_smartconfig_start(&cfg) );
    while (1) {
        uxBits = xEventGroupWaitBits(s_wifi_event_group, CONNECTED_BIT | ESPTOUCH_DONE_BIT, 1, 0, portMAX_DELAY);
        if(uxBits & CONNECTED_BIT) {
            ESP_LOGI(TAG, "WiFi Connected to ap");
        }
        if(uxBits & ESPTOUCH_DONE_BIT) {
            ESP_LOGI(TAG, "smartconfig over");
            esp_smartconfig_stop();
            vTaskDelete(((void*)0));
        }
    }
}
