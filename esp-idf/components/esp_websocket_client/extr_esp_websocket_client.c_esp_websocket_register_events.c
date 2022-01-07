
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_websocket_event_id_t ;
typedef TYPE_1__* esp_websocket_client_handle_t ;
typedef int esp_event_handler_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int event_handle; } ;


 int ESP_ERR_INVALID_ARG ;
 int WEBSOCKET_EVENTS ;
 int esp_event_handler_register_with (int ,int ,int ,int ,void*) ;

esp_err_t esp_websocket_register_events(esp_websocket_client_handle_t client,
                                        esp_websocket_event_id_t event,
                                        esp_event_handler_t event_handler,
                                        void* event_handler_arg) {
    if (client == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    return esp_event_handler_register_with(client->event_handle, WEBSOCKET_EVENTS, event, event_handler, event_handler_arg);
}
