
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* esp_websocket_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int run; int state; int status_bits; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_FAIL ;
 int ESP_LOGW (int ,char*) ;
 int ESP_OK ;
 int STOPPED_BIT ;
 int TAG ;
 int WEBSOCKET_STATE_UNKNOW ;
 int portMAX_DELAY ;
 int xEventGroupWaitBits (int ,int ,int,int,int ) ;

esp_err_t esp_websocket_client_stop(esp_websocket_client_handle_t client)
{
    if (client == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    if (!client->run) {
        ESP_LOGW(TAG, "Client was not started");
        return ESP_FAIL;
    }
    client->run = 0;
    xEventGroupWaitBits(client->status_bits, STOPPED_BIT, 0, 1, portMAX_DELAY);
    client->state = WEBSOCKET_STATE_UNKNOW;
    return ESP_OK;
}
