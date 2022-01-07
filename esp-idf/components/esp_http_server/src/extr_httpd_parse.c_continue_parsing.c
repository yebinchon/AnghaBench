
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t pre_parsed; int paused; } ;
typedef TYPE_1__ parser_data_t ;
struct TYPE_6__ {scalar_t__ data; } ;
typedef TYPE_2__ http_parser ;


 int ESP_LOGD (int ,int ,...) ;
 int LOG_FMT (char*) ;
 size_t MIN (size_t,size_t) ;
 int TAG ;
 int http_parser_pause (TYPE_2__*,int ) ;

__attribute__((used)) static size_t continue_parsing(http_parser *parser, size_t length)
{
    parser_data_t *data = (parser_data_t *) parser->data;



    length = MIN(length, data->pre_parsed);
    data->pre_parsed -= length;
    ESP_LOGD(TAG, LOG_FMT("skip pre-parsed data of size = %d"), length);

    http_parser_pause(parser, 0);
    data->paused = 0;
    ESP_LOGD(TAG, LOG_FMT("un-paused"));
    return length;
}
