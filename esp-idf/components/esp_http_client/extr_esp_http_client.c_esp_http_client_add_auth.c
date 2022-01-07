
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* esp_http_client_handle_t ;
struct TYPE_7__ {size_t method; void* auth_type; } ;
struct TYPE_8__ {scalar_t__ state; char* auth_header; int process_again; TYPE_2__ connection_info; TYPE_1__* auth_data; int redirect_counter; } ;
struct TYPE_6__ {int nc; void* opaque; void* nonce; void* qop; void* algorithm; void* realm; int method; } ;


 int ESP_LOGD (int ,char*,...) ;
 int ESP_LOGE (int ,char*,char*) ;
 int ESP_LOGW (int ,char*) ;
 void* HTTP_AUTH_TYPE_BASIC ;
 void* HTTP_AUTH_TYPE_DIGEST ;
 void* HTTP_AUTH_TYPE_NONE ;
 int * HTTP_METHOD_MAPPING ;
 scalar_t__ HTTP_STATE_RES_COMPLETE_HEADER ;
 int TAG ;
 int _clear_auth_data (TYPE_3__*) ;
 void* http_utils_get_string_between (char*,char*,char*) ;
 scalar_t__ http_utils_str_starts_with (char*,char*) ;
 int http_utils_trim_whitespace (char**) ;
 int strdup (int ) ;

void esp_http_client_add_auth(esp_http_client_handle_t client)
{
    if (client == ((void*)0)) {
        return;
    }
    if (client->state != HTTP_STATE_RES_COMPLETE_HEADER) {
        return;
    }

    char *auth_header = client->auth_header;
    if (auth_header) {
        http_utils_trim_whitespace(&auth_header);
        ESP_LOGD(TAG, "UNAUTHORIZED: %s", auth_header);
        client->redirect_counter++;
        if (http_utils_str_starts_with(auth_header, "Digest") == 0) {
            ESP_LOGD(TAG, "type = Digest");
            client->connection_info.auth_type = HTTP_AUTH_TYPE_DIGEST;





        } else {
            client->connection_info.auth_type = HTTP_AUTH_TYPE_NONE;
            ESP_LOGE(TAG, "This authentication method is not supported: %s", auth_header);
            return;
        }

        _clear_auth_data(client);

        client->auth_data->method = strdup(HTTP_METHOD_MAPPING[client->connection_info.method]);

        client->auth_data->nc = 1;
        client->auth_data->realm = http_utils_get_string_between(auth_header, "realm=\"", "\"");
        client->auth_data->algorithm = http_utils_get_string_between(auth_header, "algorithm=", ",");
        client->auth_data->qop = http_utils_get_string_between(auth_header, "qop=\"", "\"");
        client->auth_data->nonce = http_utils_get_string_between(auth_header, "nonce=\"", "\"");
        client->auth_data->opaque = http_utils_get_string_between(auth_header, "opaque=\"", "\"");
        client->process_again = 1;
    } else {
        client->connection_info.auth_type = HTTP_AUTH_TYPE_NONE;
        ESP_LOGW(TAG, "This request requires authentication, but does not provide header information for that");
    }
}
