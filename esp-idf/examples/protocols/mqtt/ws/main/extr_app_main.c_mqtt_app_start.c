
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_mqtt_client_handle_t ;
struct TYPE_3__ {int uri; } ;
typedef TYPE_1__ esp_mqtt_client_config_t ;


 int CONFIG_BROKER_URI ;
 int ESP_EVENT_ANY_ID ;
 int esp_mqtt_client_init (TYPE_1__ const*) ;
 int esp_mqtt_client_register_event (int ,int ,int ,int ) ;
 int esp_mqtt_client_start (int ) ;
 int mqtt_event_handler ;

__attribute__((used)) static void mqtt_app_start(void)
{
    const esp_mqtt_client_config_t mqtt_cfg = {
        .uri = CONFIG_BROKER_URI,
    };

    esp_mqtt_client_handle_t client = esp_mqtt_client_init(&mqtt_cfg);
    esp_mqtt_client_register_event(client, ESP_EVENT_ANY_ID, mqtt_event_handler, client);
    esp_mqtt_client_start(client);
}
