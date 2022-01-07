
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct httpd_req_aux {char const* scratch; } ;
struct httpd_req {struct httpd_req_aux* aux; } ;
typedef int ssize_t ;
struct TYPE_5__ {int raw_datalen; int pre_parsed; int paused; struct httpd_req* req; } ;
typedef TYPE_1__ parser_data_t ;
struct TYPE_6__ {scalar_t__ data; } ;
typedef TYPE_2__ http_parser ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_LOGD (int ,int ) ;
 int ESP_LOGE (int ,int ,int) ;
 int ESP_OK ;
 int LOG_FMT (char*) ;
 int TAG ;
 int http_parser_pause (TYPE_2__*,int) ;
 int httpd_unrecv (struct httpd_req*,char const*,int) ;

__attribute__((used)) static esp_err_t pause_parsing(http_parser *parser, const char* at)
{
    parser_data_t *parser_data = (parser_data_t *) parser->data;
    struct httpd_req *r = parser_data->req;
    struct httpd_req_aux *ra = r->aux;



    ssize_t unparsed = parser_data->raw_datalen - (at - ra->scratch);
    if (unparsed < 0) {
        ESP_LOGE(TAG, LOG_FMT("parsing beyond valid data = %d"), -unparsed);
        return ESP_ERR_INVALID_STATE;
    }




    if (unparsed && (unparsed != httpd_unrecv(r, at, unparsed))) {
        ESP_LOGE(TAG, LOG_FMT("data too large for un-recv = %d"), unparsed);
        return ESP_FAIL;
    }






    parser_data->pre_parsed = unparsed;
    http_parser_pause(parser, 1);
    parser_data->paused = 1;
    ESP_LOGD(TAG, LOG_FMT("paused"));
    return ESP_OK;
}
