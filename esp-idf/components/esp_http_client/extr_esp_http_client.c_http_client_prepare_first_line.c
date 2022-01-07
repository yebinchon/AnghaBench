
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_4__* esp_http_client_handle_t ;
struct TYPE_8__ {size_t method; char* path; char* query; } ;
struct TYPE_11__ {int buffer_size_tx; TYPE_3__* request; TYPE_1__ connection_info; } ;
struct TYPE_10__ {TYPE_2__* buffer; int headers; } ;
struct TYPE_9__ {scalar_t__ data; } ;


 char* DEFAULT_HTTP_PROTOCOL ;
 int ESP_LOGE (int ,char*) ;
 char** HTTP_METHOD_MAPPING ;
 int HTTP_METHOD_POST ;
 int TAG ;
 int esp_http_client_set_header (TYPE_4__*,char*,char*) ;
 int esp_http_client_set_method (TYPE_4__*,int ) ;
 int http_header_set_format (int ,char*,char*,int) ;
 int snprintf (scalar_t__,int,char*,char const*,...) ;

__attribute__((used)) static int http_client_prepare_first_line(esp_http_client_handle_t client, int write_len)
{
    if (write_len >= 0) {
        http_header_set_format(client->request->headers, "Content-Length", "%d", write_len);
    } else {
        esp_http_client_set_header(client, "Transfer-Encoding", "chunked");
        esp_http_client_set_method(client, HTTP_METHOD_POST);
    }

    const char *method = HTTP_METHOD_MAPPING[client->connection_info.method];

    int first_line_len = snprintf(client->request->buffer->data,
                                  client->buffer_size_tx, "%s %s",
                                  method,
                                  client->connection_info.path);
    if (first_line_len >= client->buffer_size_tx) {
        ESP_LOGE(TAG, "Out of buffer");
        return -1;
    }

    if (client->connection_info.query) {
        first_line_len += snprintf(client->request->buffer->data + first_line_len,
                                   client->buffer_size_tx - first_line_len, "?%s", client->connection_info.query);
        if (first_line_len >= client->buffer_size_tx) {
            ESP_LOGE(TAG, "Out of buffer");
            return -1;

        }
    }
    first_line_len += snprintf(client->request->buffer->data + first_line_len,
                               client->buffer_size_tx - first_line_len, " %s\r\n", DEFAULT_HTTP_PROTOCOL);
    if (first_line_len >= client->buffer_size_tx) {
        ESP_LOGE(TAG, "Out of buffer");
        return -1;
    }
    return first_line_len;
}
