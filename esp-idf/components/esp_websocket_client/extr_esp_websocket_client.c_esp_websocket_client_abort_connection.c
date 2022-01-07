
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* esp_websocket_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_4__ {int wait_timeout_ms; int state; int reconnect_tick_ms; int transport; } ;


 int ESP_LOGI (int ,char*,int ) ;
 int ESP_OK ;
 int TAG ;
 int WEBSOCKET_EVENT_DISCONNECTED ;
 int WEBSOCKET_RECONNECT_TIMEOUT_MS ;
 int WEBSOCKET_STATE_WAIT_TIMEOUT ;
 int _tick_get_ms () ;
 int esp_transport_close (int ) ;
 int esp_websocket_client_dispatch_event (TYPE_1__*,int ,int *,int ) ;

__attribute__((used)) static esp_err_t esp_websocket_client_abort_connection(esp_websocket_client_handle_t client)
{
    esp_transport_close(client->transport);
    client->wait_timeout_ms = WEBSOCKET_RECONNECT_TIMEOUT_MS;
    client->reconnect_tick_ms = _tick_get_ms();
    client->state = WEBSOCKET_STATE_WAIT_TIMEOUT;
    ESP_LOGI(TAG, "Reconnect after %d ms", client->wait_timeout_ms);
    esp_websocket_client_dispatch_event(client, WEBSOCKET_EVENT_DISCONNECTED, ((void*)0), 0);
    return ESP_OK;
}
