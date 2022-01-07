
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ length; scalar_t__ at; } ;
struct TYPE_8__ {scalar_t__ status; TYPE_1__ last; void* error; } ;
typedef TYPE_2__ parser_data_t ;
struct TYPE_9__ {scalar_t__ data; } ;
typedef TYPE_3__ http_parser ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_FAIL ;
 int ESP_LOGD (int ,int ) ;
 int ESP_LOGE (int ,int ) ;
 scalar_t__ ESP_OK ;
 void* HTTPD_500_INTERNAL_SERVER_ERROR ;
 int LOG_FMT (char*) ;
 scalar_t__ PARSING_BODY ;
 scalar_t__ PARSING_COMPLETE ;
 void* PARSING_FAILED ;
 scalar_t__ PARSING_URL ;
 int TAG ;
 scalar_t__ pause_parsing (TYPE_3__*,scalar_t__) ;
 scalar_t__ verify_url (TYPE_3__*) ;

__attribute__((used)) static esp_err_t cb_no_body(http_parser *parser)
{
    parser_data_t *parser_data = (parser_data_t *) parser->data;


    if (parser_data->status == PARSING_URL) {
        ESP_LOGD(TAG, LOG_FMT("no headers"));
        if (verify_url(parser) != ESP_OK) {



            parser_data->status = PARSING_FAILED;
            return ESP_FAIL;
        }
    } else if (parser_data->status != PARSING_BODY) {
        ESP_LOGE(TAG, LOG_FMT("unexpected state transition"));
        parser_data->error = HTTPD_500_INTERNAL_SERVER_ERROR;
        parser_data->status = PARSING_FAILED;
        return ESP_FAIL;
    }





    if (pause_parsing(parser, parser_data->last.at) != ESP_OK) {
        parser_data->error = HTTPD_500_INTERNAL_SERVER_ERROR;
        parser_data->status = PARSING_FAILED;
        return ESP_FAIL;
    }

    parser_data->last.at = 0;
    parser_data->last.length = 0;
    parser_data->status = PARSING_COMPLETE;
    ESP_LOGD(TAG, LOG_FMT("message complete"));
    return ESP_OK;
}
