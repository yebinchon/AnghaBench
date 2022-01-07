
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nread; int status_code; int content_length; TYPE_3__* data; } ;
typedef TYPE_2__ http_parser ;
typedef TYPE_3__* esp_http_client_handle_t ;
struct TYPE_7__ {int state; TYPE_1__* response; } ;
struct TYPE_5__ {int data_offset; scalar_t__ data_process; int content_length; int status_code; } ;


 int ESP_LOGD (int ,char*,int ,int ,int ) ;
 int HTTP_STATE_RES_COMPLETE_HEADER ;
 int TAG ;

__attribute__((used)) static int http_on_headers_complete(http_parser *parser)
{
    esp_http_client_handle_t client = parser->data;
    client->response->status_code = parser->status_code;
    client->response->data_offset = parser->nread;
    client->response->content_length = parser->content_length;
    client->response->data_process = 0;
    ESP_LOGD(TAG, "http_on_headers_complete, status=%d, offset=%d, nread=%d", parser->status_code, client->response->data_offset, parser->nread);
    client->state = HTTP_STATE_RES_COMPLETE_HEADER;
    return 0;
}
