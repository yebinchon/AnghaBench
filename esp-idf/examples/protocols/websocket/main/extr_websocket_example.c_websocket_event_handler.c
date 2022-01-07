
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_2__ {scalar_t__ data_ptr; int data_len; int op_code; } ;
typedef TYPE_1__ esp_websocket_event_data_t ;
typedef int esp_event_base_t ;


 int ESP_LOGI (int ,char*,...) ;
 int ESP_LOGW (int ,char*,int ,char*) ;
 int TAG ;





__attribute__((used)) static void websocket_event_handler(void *handler_args, esp_event_base_t base, int32_t event_id, void *event_data)
{

    esp_websocket_event_data_t *data = (esp_websocket_event_data_t *)event_data;
    switch (event_id) {
        case 131:
            ESP_LOGI(TAG, "WEBSOCKET_EVENT_CONNECTED");


            break;
        case 129:
            ESP_LOGI(TAG, "WEBSOCKET_EVENT_DISCONNECTED");
            break;

        case 130:
            ESP_LOGI(TAG, "WEBSOCKET_EVENT_DATA");
            ESP_LOGI(TAG, "Received opcode=%d", data->op_code);
            ESP_LOGW(TAG, "Received=%.*s\r\n", data->data_len, (char*)data->data_ptr);
            break;
        case 128:
            ESP_LOGI(TAG, "WEBSOCKET_EVENT_ERROR");
            break;
    }
}
