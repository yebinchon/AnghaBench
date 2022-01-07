
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* esp_http_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ data_write_left; scalar_t__ data_written_index; scalar_t__ post_data; scalar_t__ post_len; } ;


 int ESP_ERR_HTTP_WRITE_DATA ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 scalar_t__ HTTP_STATE_REQ_COMPLETE_DATA ;
 scalar_t__ HTTP_STATE_REQ_COMPLETE_HEADER ;
 int TAG ;
 int esp_http_client_write (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static esp_err_t esp_http_client_send_post_data(esp_http_client_handle_t client)
{
    if (client->state != HTTP_STATE_REQ_COMPLETE_HEADER) {
        ESP_LOGE(TAG, "Invalid state");
        return ESP_ERR_INVALID_STATE;
    }
    if (!(client->post_data && client->post_len)) {
        goto success;
    }

    int wret = esp_http_client_write(client, client->post_data + client->data_written_index, client->data_write_left);
    if (wret < 0) {
        return wret;
    }
    client->data_write_left -= wret;
    client->data_written_index += wret;

    if (client->data_write_left <= 0) {
        goto success;
    } else {
        return ESP_ERR_HTTP_WRITE_DATA;
    }

success:
    client->state = HTTP_STATE_REQ_COMPLETE_DATA;
    return ESP_OK;
}
