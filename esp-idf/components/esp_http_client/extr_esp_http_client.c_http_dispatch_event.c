
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int data_len; void* data; int user_data; int event_id; } ;
struct TYPE_5__ {int (* event_handler ) (TYPE_2__*) ;int user_data; TYPE_2__ event; } ;
typedef TYPE_1__ esp_http_client_t ;
typedef TYPE_2__ esp_http_client_event_t ;
typedef int esp_http_client_event_id_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static esp_err_t http_dispatch_event(esp_http_client_t *client, esp_http_client_event_id_t event_id, void *data, int len)
{
    esp_http_client_event_t *event = &client->event;

    if (client->event_handler) {
        event->event_id = event_id;
        event->user_data = client->user_data;
        event->data = data;
        event->data_len = len;
        return client->event_handler(event);
    }
    return ESP_OK;
}
