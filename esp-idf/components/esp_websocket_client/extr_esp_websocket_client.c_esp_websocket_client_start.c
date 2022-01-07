
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* esp_websocket_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_6__ {scalar_t__ state; int status_bits; TYPE_1__* config; } ;
struct TYPE_5__ {int task_prio; int task_stack; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int STOPPED_BIT ;
 int TAG ;
 scalar_t__ WEBSOCKET_STATE_INIT ;
 int esp_websocket_client_task ;
 scalar_t__ pdTRUE ;
 int xEventGroupClearBits (int ,int ) ;
 scalar_t__ xTaskCreate (int ,char*,int ,TYPE_2__*,int ,int *) ;

esp_err_t esp_websocket_client_start(esp_websocket_client_handle_t client)
{
    if (client == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    if (client->state >= WEBSOCKET_STATE_INIT) {
        ESP_LOGE(TAG, "The client has started");
        return ESP_FAIL;
    }
    if (xTaskCreate(esp_websocket_client_task, "websocket_task", client->config->task_stack, client, client->config->task_prio, ((void*)0)) != pdTRUE) {
        ESP_LOGE(TAG, "Error create websocket task");
        return ESP_FAIL;
    }
    xEventGroupClearBits(client->status_bits, STOPPED_BIT);
    return ESP_OK;
}
