
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ esp_websocket_client_handle_t ;
struct TYPE_3__ {int uri; } ;
typedef TYPE_1__ esp_websocket_client_config_t ;


 int ESP_LOGI (int ,char*,...) ;
 int TAG ;
 int WEBSOCKET_ECHO_ENDPOINT ;
 int WEBSOCKET_EVENT_ANY ;
 int esp_websocket_client_destroy (scalar_t__) ;
 scalar_t__ esp_websocket_client_init (TYPE_1__ const*) ;
 scalar_t__ esp_websocket_client_is_connected (scalar_t__) ;
 int esp_websocket_client_send (scalar_t__,char*,int,int ) ;
 int esp_websocket_client_start (scalar_t__) ;
 int esp_websocket_client_stop (scalar_t__) ;
 int esp_websocket_register_events (scalar_t__,int ,int ,void*) ;
 int portMAX_DELAY ;
 int portTICK_RATE_MS ;
 int sprintf (char*,char*,int ) ;
 int vTaskDelay (int) ;
 int websocket_event_handler ;

__attribute__((used)) static void websocket_app_start(void)
{
    ESP_LOGI(TAG, "Connectiong to %s...", WEBSOCKET_ECHO_ENDPOINT);

    const esp_websocket_client_config_t websocket_cfg = {
        .uri = WEBSOCKET_ECHO_ENDPOINT,
    };

    esp_websocket_client_handle_t client = esp_websocket_client_init(&websocket_cfg);
    esp_websocket_register_events(client, WEBSOCKET_EVENT_ANY, websocket_event_handler, (void *)client);

    esp_websocket_client_start(client);
    char data[32];
    int i = 0;
    while (i < 10) {
        if (esp_websocket_client_is_connected(client)) {
            int len = sprintf(data, "hello %04d", i++);
            ESP_LOGI(TAG, "Sending %s", data);
            esp_websocket_client_send(client, data, len, portMAX_DELAY);
        }
        vTaskDelay(1000 / portTICK_RATE_MS);
    }
    esp_websocket_client_stop(client);
    ESP_LOGI(TAG, "Websocket Stopped");
    esp_websocket_client_destroy(client);
}
