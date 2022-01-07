
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int on_message_complete; int on_body; int on_headers_complete; int on_header_value; int on_header_field; int on_url; } ;
struct TYPE_8__ {TYPE_6__ settings; int * req; } ;
typedef TYPE_1__ parser_data_t ;
typedef int httpd_req_t ;
struct TYPE_9__ {void* data; } ;
typedef TYPE_2__ http_parser ;


 int HTTP_REQUEST ;
 int cb_header_field ;
 int cb_header_value ;
 int cb_headers_complete ;
 int cb_no_body ;
 int cb_on_body ;
 int cb_url ;
 int http_parser_init (TYPE_2__*,int ) ;
 int http_parser_settings_init (TYPE_6__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void parse_init(httpd_req_t *r, http_parser *parser, parser_data_t *data)
{

    memset(data, 0, sizeof(parser_data_t));
    data->req = r;


    http_parser_init(parser, HTTP_REQUEST);
    parser->data = (void *)data;


    http_parser_settings_init(&data->settings);


    data->settings.on_url = cb_url;
    data->settings.on_header_field = cb_header_field;
    data->settings.on_header_value = cb_header_value;
    data->settings.on_headers_complete = cb_headers_complete;
    data->settings.on_body = cb_on_body;
    data->settings.on_message_complete = cb_no_body;
}
