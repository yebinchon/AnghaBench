
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_mqtt_client_handle_t ;
struct TYPE_3__ {char* uri; } ;
typedef TYPE_1__ esp_mqtt_client_config_t ;


 char* CONFIG_BROKER_URL ;
 int ESP_EVENT_ANY_ID ;
 int ESP_LOGE (int ,char*) ;
 int TAG ;
 int abort () ;
 int esp_mqtt_client_init (TYPE_1__*) ;
 int esp_mqtt_client_register_event (int ,int ,int ,int ) ;
 int esp_mqtt_client_start (int ) ;
 int fgetc (int ) ;
 int mqtt_event_handler ;
 int portTICK_PERIOD_MS ;
 int printf (char*,...) ;
 int stdin ;
 scalar_t__ strcmp (char*,char*) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void mqtt_app_start(void)
{
    esp_mqtt_client_config_t mqtt_cfg = {
        .uri = CONFIG_BROKER_URL,
    };
    esp_mqtt_client_handle_t client = esp_mqtt_client_init(&mqtt_cfg);
    esp_mqtt_client_register_event(client, ESP_EVENT_ANY_ID, mqtt_event_handler, client);
    esp_mqtt_client_start(client);
}
