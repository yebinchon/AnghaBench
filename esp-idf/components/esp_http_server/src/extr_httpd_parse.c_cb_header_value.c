
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* at; scalar_t__ length; } ;
struct TYPE_6__ {scalar_t__ status; TYPE_1__ last; int error; } ;
typedef TYPE_2__ parser_data_t ;
struct TYPE_7__ {scalar_t__ data; } ;
typedef TYPE_3__ http_parser ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_LOGD (int ,int ,size_t,char const*) ;
 int ESP_LOGE (int ,int ) ;
 int ESP_OK ;
 int HTTPD_500_INTERNAL_SERVER_ERROR ;
 int LOG_FMT (char*) ;
 scalar_t__ PARSING_FAILED ;
 scalar_t__ PARSING_HDR_FIELD ;
 scalar_t__ PARSING_HDR_VALUE ;
 int TAG ;

__attribute__((used)) static esp_err_t cb_header_value(http_parser *parser, const char *at, size_t length)
{
    parser_data_t *parser_data = (parser_data_t *) parser->data;


    if (parser_data->status == PARSING_HDR_FIELD) {

        parser_data->last.at = at;
        parser_data->last.length = 0;
        parser_data->status = PARSING_HDR_VALUE;

        if (length == 0) {







            char *at_adj = (char *)parser_data->last.at;

            while (*(--at_adj) != ':');

            while (*(++at_adj) == ' ');

            parser_data->last.at = at_adj;
        }
    } else if (parser_data->status != PARSING_HDR_VALUE) {
        ESP_LOGE(TAG, LOG_FMT("unexpected state transition"));
        parser_data->error = HTTPD_500_INTERNAL_SERVER_ERROR;
        parser_data->status = PARSING_FAILED;
        return ESP_FAIL;
    }

    ESP_LOGD(TAG, LOG_FMT("processing value = %.*s"), length, at);


    parser_data->last.length += length;
    return ESP_OK;
}
