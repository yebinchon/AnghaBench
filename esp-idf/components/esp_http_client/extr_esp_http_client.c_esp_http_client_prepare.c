
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_3__* esp_http_client_handle_t ;
typedef int esp_err_t ;
struct TYPE_10__ {int nc; scalar_t__ cnonce; int uri; } ;
struct TYPE_8__ {scalar_t__ auth_type; int password; scalar_t__ username; int path; } ;
struct TYPE_9__ {int first_line_prepared; TYPE_4__* auth_data; TYPE_2__ connection_info; int parser; TYPE_1__* response; scalar_t__ process_again; } ;
struct TYPE_7__ {scalar_t__ data_process; } ;


 int ESP_LOGD (int ,char*,char*) ;
 int ESP_OK ;
 scalar_t__ HTTP_AUTH_TYPE_BASIC ;
 scalar_t__ HTTP_AUTH_TYPE_DIGEST ;
 int HTTP_RESPONSE ;
 int TAG ;
 int esp_http_client_set_header (TYPE_3__*,char*,char*) ;
 scalar_t__ esp_random () ;
 int free (char*) ;
 char* http_auth_basic (scalar_t__,int ) ;
 char* http_auth_digest (scalar_t__,int ,TYPE_4__*) ;
 int http_parser_init (int ,int ) ;

__attribute__((used)) static esp_err_t esp_http_client_prepare(esp_http_client_handle_t client)
{
    client->process_again = 0;
    client->response->data_process = 0;
    client->first_line_prepared = 0;
    http_parser_init(client->parser, HTTP_RESPONSE);
    if (client->connection_info.username) {
        char *auth_response = ((void*)0);

        if (client->connection_info.auth_type == HTTP_AUTH_TYPE_BASIC) {
            auth_response = http_auth_basic(client->connection_info.username, client->connection_info.password);
        } else if (client->connection_info.auth_type == HTTP_AUTH_TYPE_DIGEST && client->auth_data) {
            client->auth_data->uri = client->connection_info.path;
            client->auth_data->cnonce = ((uint64_t)esp_random() << 32) + esp_random();
            auth_response = http_auth_digest(client->connection_info.username, client->connection_info.password, client->auth_data);
            client->auth_data->nc ++;
        }

        if (auth_response) {
            ESP_LOGD(TAG, "auth_response=%s", auth_response);
            esp_http_client_set_header(client, "Authorization", auth_response);
            free(auth_response);
        }
    }
    return ESP_OK;
}
