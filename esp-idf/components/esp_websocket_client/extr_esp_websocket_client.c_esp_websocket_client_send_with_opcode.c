
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ws_transport_opcodes_t ;
typedef TYPE_1__* esp_websocket_client_handle_t ;
typedef int TickType_t ;
struct TYPE_4__ {int buffer_size; int lock; scalar_t__ tx_buffer; int * transport; } ;


 int ESP_FAIL ;
 int ESP_LOGE (int ,char*,...) ;
 int TAG ;
 int errno ;
 int esp_transport_ws_send_raw (int *,int ,char*,int,int ) ;
 int esp_websocket_client_is_connected (TYPE_1__*) ;
 int memcpy (scalar_t__,char const*,int) ;
 scalar_t__ pdPASS ;
 int xSemaphoreGiveRecursive (int ) ;
 scalar_t__ xSemaphoreTakeRecursive (int ,int ) ;

__attribute__((used)) static int esp_websocket_client_send_with_opcode(esp_websocket_client_handle_t client, ws_transport_opcodes_t opcode, const char *data, int len, TickType_t timeout)
{
    int need_write = len;
    int wlen = 0, widx = 0;
    int ret = ESP_FAIL;

    if (client == ((void*)0) || data == ((void*)0) || len <= 0) {
        ESP_LOGE(TAG, "Invalid arguments");
        return ESP_FAIL;
    }

    if (xSemaphoreTakeRecursive(client->lock, timeout) != pdPASS) {
        ESP_LOGE(TAG, "Could not lock ws-client within %d timeout", timeout);
        return ESP_FAIL;
    }

    if (!esp_websocket_client_is_connected(client)) {
        ESP_LOGE(TAG, "Websocket client is not connected");
        goto unlock_and_return;
    }

    if (client->transport == ((void*)0)) {
        ESP_LOGE(TAG, "Invalid transport");
        goto unlock_and_return;
    }


    while (widx < len) {
        if (need_write > client->buffer_size) {
            need_write = client->buffer_size;
        }
        memcpy(client->tx_buffer, data + widx, need_write);

        wlen = esp_transport_ws_send_raw(client->transport, opcode, (char *)client->tx_buffer, need_write, timeout);
        if (wlen <= 0) {
            ret = wlen;
            ESP_LOGE(TAG, "Network error: esp_transport_write() returned %d, errno=%d", ret, errno);
            goto unlock_and_return;
        }
        widx += wlen;
        need_write = len - widx;
    }
    ret = widx;
unlock_and_return:
    xSemaphoreGiveRecursive(client->lock);
    return ret;
}
