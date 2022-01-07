
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int esp_log_level_t ;
typedef TYPE_2__* esp_http_client_handle_t ;
struct TYPE_7__ {int raw_len; int raw_data; char* output_ptr; int data; } ;
typedef TYPE_3__ esp_http_buffer_t ;
struct TYPE_6__ {int buffer_size_rx; int parser_settings; int parser; TYPE_1__* response; int timeout_ms; int transport; int is_chunk_complete; } ;
struct TYPE_5__ {int is_chunked; int content_length; int data_process; TYPE_3__* buffer; } ;


 scalar_t__ ENOTCONN ;
 int ESP_FAIL ;
 int ESP_LOGD (int ,char*,int,int,int,...) ;
 int ESP_LOG_DEBUG ;
 int ESP_LOG_LEVEL (int ,int ,char*,int,scalar_t__) ;
 int ESP_LOG_WARN ;
 int TAG ;
 scalar_t__ errno ;
 int esp_transport_read (int ,int ,int,int ) ;
 int http_parser_execute (int ,int ,int ,int) ;
 int memcpy (char*,int,int) ;

int esp_http_client_read(esp_http_client_handle_t client, char *buffer, int len)
{
    esp_http_buffer_t *res_buffer = client->response->buffer;

    int rlen = ESP_FAIL, ridx = 0;
    if (res_buffer->raw_len) {
        int remain_len = client->response->buffer->raw_len;
        if (remain_len > len) {
            remain_len = len;
        }
        memcpy(buffer, res_buffer->raw_data, remain_len);
        res_buffer->raw_len -= remain_len;
        res_buffer->raw_data += remain_len;
        ridx = remain_len;
    }
    int need_read = len - ridx;
    bool is_data_remain = 1;
    while (need_read > 0 && is_data_remain) {
        if (client->response->is_chunked) {
            is_data_remain = !client->is_chunk_complete;
        } else {
            is_data_remain = client->response->data_process < client->response->content_length;
        }
        ESP_LOGD(TAG, "is_data_remain=%d, is_chunked=%d, content_length=%d", is_data_remain, client->response->is_chunked, client->response->content_length);
        if (!is_data_remain) {
            break;
        }
        int byte_to_read = need_read;
        if (byte_to_read > client->buffer_size_rx) {
            byte_to_read = client->buffer_size_rx;
        }
        errno = 0;
        rlen = esp_transport_read(client->transport, res_buffer->data, byte_to_read, client->timeout_ms);
        ESP_LOGD(TAG, "need_read=%d, byte_to_read=%d, rlen=%d, ridx=%d", need_read, byte_to_read, rlen, ridx);

        if (rlen <= 0) {
            if (errno != 0) {
                esp_log_level_t sev = ESP_LOG_WARN;


                if (rlen == -1 && errno == ENOTCONN && client->response->is_chunked) {

                    http_parser_execute(client->parser, client->parser_settings, res_buffer->data, 0);

                    sev = ESP_LOG_DEBUG;
                }
                ESP_LOG_LEVEL(sev, TAG, "esp_transport_read returned:%d and errno:%d ", rlen, errno);
            }
            return ridx;
        }
        res_buffer->output_ptr = buffer + ridx;
        http_parser_execute(client->parser, client->parser_settings, res_buffer->data, rlen);
        ridx += res_buffer->raw_len;
        need_read -= res_buffer->raw_len;

        res_buffer->raw_len = 0;
        res_buffer->output_ptr = ((void*)0);
    }

    return ridx;
}
