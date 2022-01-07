
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* cert_pem; int event_handle; } ;
typedef TYPE_1__ esp_mqtt_client_config_t ;


 int ESP_LOGI (int ,char*,int ) ;
 int TAG ;
 int esp_get_free_heap_size () ;
 int esp_mqtt_client_init (TYPE_1__ const*) ;
 int mqtt_client ;
 scalar_t__ mqtt_eclipse_org_pem_start ;
 int mqtt_event_group ;
 int mqtt_event_handler ;
 int xEventGroupCreate () ;

__attribute__((used)) static void mqtt_app_start(void)
{
    mqtt_event_group = xEventGroupCreate();
    const esp_mqtt_client_config_t mqtt_cfg = {
        .event_handle = mqtt_event_handler,
        .cert_pem = (const char *)mqtt_eclipse_org_pem_start,
    };

    ESP_LOGI(TAG, "[APP] Free memory: %d bytes", esp_get_free_heap_size());
    mqtt_client = esp_mqtt_client_init(&mqtt_cfg);
}
