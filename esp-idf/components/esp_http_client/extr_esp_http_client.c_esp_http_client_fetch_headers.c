
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* esp_http_client_handle_t ;
struct TYPE_7__ {scalar_t__ len; int data; } ;
typedef TYPE_3__ esp_http_buffer_t ;
struct TYPE_6__ {scalar_t__ state; TYPE_1__* response; int parser_settings; int parser; int timeout_ms; int buffer_size_rx; int transport; } ;
struct TYPE_5__ {int status_code; scalar_t__ content_length; int is_chunked; TYPE_3__* buffer; } ;


 int ESP_FAIL ;
 int ESP_LOGD (int ,char*,scalar_t__) ;
 scalar_t__ HTTP_STATE_REQ_COMPLETE_DATA ;
 scalar_t__ HTTP_STATE_REQ_COMPLETE_HEADER ;
 scalar_t__ HTTP_STATE_RES_COMPLETE_HEADER ;
 int TAG ;
 scalar_t__ esp_transport_read (int ,int ,int ,int ) ;
 int http_parser_execute (int ,int ,int ,scalar_t__) ;

int esp_http_client_fetch_headers(esp_http_client_handle_t client)
{
    if (client->state < HTTP_STATE_REQ_COMPLETE_HEADER) {
        return ESP_FAIL;
    }

    client->state = HTTP_STATE_REQ_COMPLETE_DATA;
    esp_http_buffer_t *buffer = client->response->buffer;
    client->response->status_code = -1;

    while (client->state < HTTP_STATE_RES_COMPLETE_HEADER) {
        buffer->len = esp_transport_read(client->transport, buffer->data, client->buffer_size_rx, client->timeout_ms);
        if (buffer->len <= 0) {
            return ESP_FAIL;
        }
        http_parser_execute(client->parser, client->parser_settings, buffer->data, buffer->len);
    }
    ESP_LOGD(TAG, "content_length = %d", client->response->content_length);
    if (client->response->content_length <= 0) {
        client->response->is_chunked = 1;
        return 0;
    }
    return client->response->content_length;
}
