
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* esp_http_client_handle_t ;
struct TYPE_9__ {int data; } ;
typedef TYPE_4__ esp_http_buffer_t ;
struct TYPE_6__ {scalar_t__ method; } ;
struct TYPE_8__ {scalar_t__ state; int parser_settings; int parser; int timeout_ms; int buffer_size_rx; int transport; TYPE_2__* response; TYPE_1__ connection_info; } ;
struct TYPE_7__ {int content_length; int data_process; TYPE_4__* buffer; } ;


 int ESP_FAIL ;
 int ESP_LOGD (int ,char*,int ,int ) ;
 scalar_t__ HTTP_METHOD_HEAD ;
 scalar_t__ HTTP_STATE_RES_COMPLETE_HEADER ;
 int TAG ;
 int esp_transport_read (int ,int ,int ,int ) ;
 int http_parser_execute (int ,int ,int ,int) ;

__attribute__((used)) static int esp_http_client_get_data(esp_http_client_handle_t client)
{
    if (client->state < HTTP_STATE_RES_COMPLETE_HEADER) {
        return ESP_FAIL;
    }

    if (client->connection_info.method == HTTP_METHOD_HEAD) {
        return 0;
    }

    esp_http_buffer_t *res_buffer = client->response->buffer;

    ESP_LOGD(TAG, "data_process=%d, content_length=%d", client->response->data_process, client->response->content_length);

    int rlen = esp_transport_read(client->transport, res_buffer->data, client->buffer_size_rx, client->timeout_ms);
    if (rlen >= 0) {
        http_parser_execute(client->parser, client->parser_settings, res_buffer->data, rlen);
    }
    return rlen;
}
