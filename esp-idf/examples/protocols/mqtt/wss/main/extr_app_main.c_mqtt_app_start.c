
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_mqtt_client_handle_t ;
struct TYPE_3__ {char const* cert_pem; int uri; } ;
typedef TYPE_1__ esp_mqtt_client_config_t ;


 int CONFIG_BROKER_URI ;
 int ESP_EVENT_ANY_ID ;
 int ESP_LOGI (int ,char*,int ) ;
 int TAG ;
 int esp_get_free_heap_size () ;
 int esp_mqtt_client_init (TYPE_1__ const*) ;
 int esp_mqtt_client_register_event (int ,int ,int ,int ) ;
 int esp_mqtt_client_start (int ) ;
 scalar_t__ mqtt_eclipse_org_pem_start ;
 int mqtt_event_handler ;

__attribute__((used)) static void mqtt_app_start(void)
{
    const esp_mqtt_client_config_t mqtt_cfg = {
        .uri = CONFIG_BROKER_URI,
        .cert_pem = (const char *)mqtt_eclipse_org_pem_start,
    };

    ESP_LOGI(TAG, "[APP] Free memory: %d bytes", esp_get_free_heap_size());
    esp_mqtt_client_handle_t client = esp_mqtt_client_init(&mqtt_cfg);
    esp_mqtt_client_register_event(client, ESP_EVENT_ANY_ID, mqtt_event_handler, client);

    esp_mqtt_client_start(client);
}
