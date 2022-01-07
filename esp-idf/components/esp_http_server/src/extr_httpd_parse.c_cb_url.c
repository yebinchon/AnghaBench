
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* at; scalar_t__ length; } ;
struct TYPE_6__ {scalar_t__ status; int error; TYPE_1__ last; } ;
typedef TYPE_2__ parser_data_t ;
struct TYPE_7__ {scalar_t__ data; } ;
typedef TYPE_3__ http_parser ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_LOGD (int ,int ,...) ;
 int ESP_LOGE (int ,int ) ;
 int ESP_LOGW (int ,int ,scalar_t__,scalar_t__) ;
 int ESP_OK ;
 int HTTPD_414_URI_TOO_LONG ;
 int HTTPD_500_INTERNAL_SERVER_ERROR ;
 scalar_t__ HTTPD_MAX_URI_LEN ;
 int LOG_FMT (char*) ;
 void* PARSING_FAILED ;
 scalar_t__ PARSING_IDLE ;
 scalar_t__ PARSING_URL ;
 int TAG ;

__attribute__((used)) static esp_err_t cb_url(http_parser *parser,
                        const char *at, size_t length)
{
    parser_data_t *parser_data = (parser_data_t *) parser->data;

    if (parser_data->status == PARSING_IDLE) {
        ESP_LOGD(TAG, LOG_FMT("message begin"));


        parser_data->last.at = at;
        parser_data->last.length = 0;
        parser_data->status = PARSING_URL;
    } else if (parser_data->status != PARSING_URL) {
        ESP_LOGE(TAG, LOG_FMT("unexpected state transition"));
        parser_data->error = HTTPD_500_INTERNAL_SERVER_ERROR;
        parser_data->status = PARSING_FAILED;
        return ESP_FAIL;
    }

    ESP_LOGD(TAG, LOG_FMT("processing url = %.*s"), length, at);


    if ((parser_data->last.length += length) > HTTPD_MAX_URI_LEN) {
        ESP_LOGW(TAG, LOG_FMT("URI length (%d) greater than supported (%d)"),
                 parser_data->last.length, HTTPD_MAX_URI_LEN);
        parser_data->error = HTTPD_414_URI_TOO_LONG;
        parser_data->status = PARSING_FAILED;
        return ESP_FAIL;
    }
    return ESP_OK;
}
