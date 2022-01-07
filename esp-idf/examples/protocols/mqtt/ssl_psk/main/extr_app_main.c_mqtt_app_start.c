
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_mqtt_client_handle_t ;
struct TYPE_3__ {int * psk_hint_key; int event_handle; int uri; } ;
typedef TYPE_1__ esp_mqtt_client_config_t ;


 int ESP_LOGI (int ,char*,int ) ;
 int EXAMPLE_BROKER_URI ;
 int TAG ;
 int esp_get_free_heap_size () ;
 int esp_mqtt_client_init (TYPE_1__ const*) ;
 int esp_mqtt_client_start (int ) ;
 int mqtt_event_handler ;
 int psk_hint_key ;

__attribute__((used)) static void mqtt_app_start(void)
{
    const esp_mqtt_client_config_t mqtt_cfg = {
        .uri = EXAMPLE_BROKER_URI,
        .event_handle = mqtt_event_handler,
        .psk_hint_key = &psk_hint_key,
    };

    ESP_LOGI(TAG, "[APP] Free memory: %d bytes", esp_get_free_heap_size());
    esp_mqtt_client_handle_t client = esp_mqtt_client_init(&mqtt_cfg);
    esp_mqtt_client_start(client);
}
