
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_mqtt_client_handle_t ;
struct TYPE_3__ {char* uri; char const* client_cert_pem; char const* client_key_pem; int event_handle; } ;
typedef TYPE_1__ esp_mqtt_client_config_t ;


 int ESP_LOGI (int ,char*,int ) ;
 int TAG ;
 scalar_t__ client_cert_pem_start ;
 scalar_t__ client_key_pem_start ;
 int esp_get_free_heap_size () ;
 int esp_mqtt_client_init (TYPE_1__ const*) ;
 int esp_mqtt_client_start (int ) ;
 int mqtt_event_handler ;

__attribute__((used)) static void mqtt_app_start(void)
{
    const esp_mqtt_client_config_t mqtt_cfg = {
        .uri = "mqtts://test.mosquitto.org:8884",
        .event_handle = mqtt_event_handler,
        .client_cert_pem = (const char *)client_cert_pem_start,
        .client_key_pem = (const char *)client_key_pem_start,
    };

    ESP_LOGI(TAG, "[APP] Free memory: %d bytes", esp_get_free_heap_size());
    esp_mqtt_client_handle_t client = esp_mqtt_client_init(&mqtt_cfg);
    esp_mqtt_client_start(client);
}
