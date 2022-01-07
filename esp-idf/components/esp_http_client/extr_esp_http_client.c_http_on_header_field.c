
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ http_parser ;
struct TYPE_5__ {int current_header_key; } ;
typedef TYPE_2__ esp_http_client_t ;


 int http_utils_assign_string (int *,char const*,size_t) ;

__attribute__((used)) static int http_on_header_field(http_parser *parser, const char *at, size_t length)
{
    esp_http_client_t *client = parser->data;
    http_utils_assign_string(&client->current_header_key, at, length);

    return 0;
}
