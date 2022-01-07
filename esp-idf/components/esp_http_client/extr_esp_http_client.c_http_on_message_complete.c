
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ http_parser ;
typedef TYPE_2__* esp_http_client_handle_t ;
struct TYPE_5__ {int is_chunk_complete; } ;


 int ESP_LOGD (int ,char*,int) ;
 int TAG ;

__attribute__((used)) static int http_on_message_complete(http_parser *parser)
{
    ESP_LOGD(TAG, "http_on_message_complete, parser=%x", (int)parser);
    esp_http_client_handle_t client = parser->data;
    client->is_chunk_complete = 1;
    return 0;
}
