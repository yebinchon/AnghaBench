
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_3__* esp_http_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_11__ {int first_line_prepared; int data_written_index; int data_write_left; int buffer_size_tx; int post_len; int state; int timeout_ms; TYPE_2__* request; int transport; int header_index; scalar_t__ is_async; } ;
struct TYPE_10__ {TYPE_1__* buffer; int headers; } ;
struct TYPE_9__ {scalar_t__* data; } ;


 int ESP_ERR_HTTP_WRITE_DATA ;
 int ESP_LOGD (int ,char*,int ,scalar_t__*) ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int HTTP_EVENT_HEADERS_SENT ;
 int HTTP_STATE_REQ_COMPLETE_HEADER ;
 int TAG ;
 int esp_http_client_close (TYPE_3__*) ;
 int esp_http_client_write (TYPE_3__*,scalar_t__*,int) ;
 int esp_transport_write (int ,scalar_t__*,int,int ) ;
 int http_client_prepare_first_line (TYPE_3__*,int) ;
 int http_dispatch_event (TYPE_3__*,int ,int *,int ) ;
 int http_header_generate_string (int ,int ,scalar_t__*,int*) ;

__attribute__((used)) static esp_err_t esp_http_client_request_send(esp_http_client_handle_t client, int write_len)
{
    int first_line_len = 0;
    if (!client->first_line_prepared) {
        if ((first_line_len = http_client_prepare_first_line(client, write_len)) < 0) {
            return first_line_len;
        }
        client->first_line_prepared = 1;
        client->header_index = 0;
        client->data_written_index = 0;
        client->data_write_left = 0;
    }

    if (client->data_write_left > 0) {

        int wret = 0;
        if (((wret = esp_http_client_write(client, client->request->buffer->data + client->data_written_index, client->data_write_left)) < 0)) {
            ESP_LOGE(TAG, "Error write request");
            return ESP_ERR_HTTP_WRITE_DATA;
        }
        client->data_write_left -= wret;
        client->data_written_index += wret;
        if (client->is_async && client->data_write_left > 0) {
            return ESP_ERR_HTTP_WRITE_DATA;

        }
    }

    int wlen = client->buffer_size_tx - first_line_len;
    while ((client->header_index = http_header_generate_string(client->request->headers, client->header_index, client->request->buffer->data + first_line_len, &wlen))) {
        if (wlen <= 0) {
            break;
        }
        if (first_line_len) {
            wlen += first_line_len;
            first_line_len = 0;
        }
        client->request->buffer->data[wlen] = 0;
        ESP_LOGD(TAG, "Write header[%d]: %s", client->header_index, client->request->buffer->data);

        client->data_write_left = wlen;
        client->data_written_index = 0;
        while (client->data_write_left > 0) {
            int wret = esp_transport_write(client->transport, client->request->buffer->data + client->data_written_index, client->data_write_left, client->timeout_ms);
            if (wret <= 0) {
                ESP_LOGE(TAG, "Error write request");
                esp_http_client_close(client);
                return ESP_ERR_HTTP_WRITE_DATA;
            }
            client->data_write_left -= wret;
            client->data_written_index += wret;
        }
        wlen = client->buffer_size_tx;
    }

    client->data_written_index = 0;
    client->data_write_left = client->post_len;
    http_dispatch_event(client, HTTP_EVENT_HEADERS_SENT, ((void*)0), 0);
    client->state = HTTP_STATE_REQ_COMPLETE_HEADER;
    return ESP_OK;
}
