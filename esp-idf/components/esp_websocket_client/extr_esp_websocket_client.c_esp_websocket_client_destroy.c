
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* esp_websocket_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_6__ {scalar_t__ status_bits; struct TYPE_6__* rx_buffer; struct TYPE_6__* tx_buffer; int lock; int transport_list; scalar_t__ event_handle; scalar_t__ run; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int esp_event_loop_delete (scalar_t__) ;
 int esp_transport_list_destroy (int ) ;
 int esp_websocket_client_destroy_config (TYPE_1__*) ;
 int esp_websocket_client_stop (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int vEventGroupDelete (scalar_t__) ;
 int vQueueDelete (int ) ;

esp_err_t esp_websocket_client_destroy(esp_websocket_client_handle_t client)
{
    if (client == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    if (client->run) {
        esp_websocket_client_stop(client);
    }
    if (client->event_handle) {
        esp_event_loop_delete(client->event_handle);
    }
    esp_websocket_client_destroy_config(client);
    esp_transport_list_destroy(client->transport_list);
    vQueueDelete(client->lock);
    free(client->tx_buffer);
    free(client->rx_buffer);
    if (client->status_bits) {
        vEventGroupDelete(client->status_bits);
    }
    free(client);
    client = ((void*)0);
    return ESP_OK;
}
