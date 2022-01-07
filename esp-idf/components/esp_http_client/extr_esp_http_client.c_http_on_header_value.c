
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* data; } ;
typedef TYPE_3__ http_parser ;
typedef TYPE_4__* esp_http_client_handle_t ;
struct TYPE_8__ {int * header_value; int * header_key; } ;
struct TYPE_10__ {int * current_header_value; int * current_header_key; TYPE_2__ event; int * auth_header; TYPE_1__* response; int * location; } ;
struct TYPE_7__ {int is_chunked; } ;


 int ESP_LOGD (int ,char*,int *,int *) ;
 int HTTP_EVENT_ON_HEADER ;
 int TAG ;
 int free (int *) ;
 int http_dispatch_event (TYPE_4__*,int ,int *,int ) ;
 int http_utils_assign_string (int **,char const*,size_t) ;
 scalar_t__ memcmp (char const*,char*,size_t) ;
 scalar_t__ strcasecmp (int *,char*) ;

__attribute__((used)) static int http_on_header_value(http_parser *parser, const char *at, size_t length)
{
    esp_http_client_handle_t client = parser->data;
    if (client->current_header_key == ((void*)0)) {
        return 0;
    }
    if (strcasecmp(client->current_header_key, "Location") == 0) {
        http_utils_assign_string(&client->location, at, length);
    } else if (strcasecmp(client->current_header_key, "Transfer-Encoding") == 0
               && memcmp(at, "chunked", length) == 0) {
        client->response->is_chunked = 1;
    } else if (strcasecmp(client->current_header_key, "WWW-Authenticate") == 0) {
        http_utils_assign_string(&client->auth_header, at, length);
    }
    http_utils_assign_string(&client->current_header_value, at, length);

    ESP_LOGD(TAG, "HEADER=%s:%s", client->current_header_key, client->current_header_value);
    client->event.header_key = client->current_header_key;
    client->event.header_value = client->current_header_value;
    http_dispatch_event(client, HTTP_EVENT_ON_HEADER, ((void*)0), 0);
    free(client->current_header_key);
    free(client->current_header_value);
    client->current_header_key = ((void*)0);
    client->current_header_value = ((void*)0);
    return 0;
}
