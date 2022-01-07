
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* esp_http_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_4__ {scalar_t__ state; int transport; } ;


 int ESP_OK ;
 int HTTP_EVENT_DISCONNECTED ;
 scalar_t__ HTTP_STATE_INIT ;
 int esp_transport_close (int ) ;
 int esp_transport_get_error_handle (int ) ;
 int http_dispatch_event (TYPE_1__*,int ,int ,int ) ;

esp_err_t esp_http_client_close(esp_http_client_handle_t client)
{
    if (client->state >= HTTP_STATE_INIT) {
        http_dispatch_event(client, HTTP_EVENT_DISCONNECTED, esp_transport_get_error_handle(client->transport), 0);
        client->state = HTTP_STATE_INIT;
        return esp_transport_close(client->transport);
    }
    return ESP_OK;
}
