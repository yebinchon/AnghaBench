
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct httpd_req_aux {scalar_t__ scratch; } ;
struct TYPE_7__ {int status; int error; int pre_parsed; scalar_t__ paused; int settings; TYPE_2__* req; } ;
typedef TYPE_1__ parser_data_t ;
struct TYPE_8__ {struct httpd_req_aux* aux; } ;
typedef TYPE_2__ httpd_req_t ;
struct TYPE_9__ {int http_errno; scalar_t__ data; } ;
typedef TYPE_3__ http_parser ;


 int ESP_LOGD (int ,int ,size_t) ;
 int ESP_LOGE (int ,int ) ;
 int ESP_LOGW (int ,int ,...) ;
 int HTTPD_400_BAD_REQUEST ;
 int HTTPD_414_URI_TOO_LONG ;
 int HTTPD_431_REQ_HDR_FIELDS_TOO_LARGE ;
 int HTTPD_500_INTERNAL_SERVER_ERROR ;
 int LOG_FMT (char*) ;
 void* PARSING_FAILED ;



 int TAG ;
 size_t continue_parsing (TYPE_3__*,size_t) ;
 size_t http_parser_execute (TYPE_3__*,int *,scalar_t__,size_t) ;

__attribute__((used)) static int parse_block(http_parser *parser, size_t offset, size_t length)
{
    parser_data_t *data = (parser_data_t *)(parser->data);
    httpd_req_t *req = data->req;
    struct httpd_req_aux *raux = req->aux;
    size_t nparsed = 0;

    if (!length) {




        ESP_LOGW(TAG, LOG_FMT("request URI/header too long"));
        switch (data->status) {
            case 128:
                data->error = HTTPD_414_URI_TOO_LONG;
                break;
            case 130:
            case 129:
                data->error = HTTPD_431_REQ_HDR_FIELDS_TOO_LARGE;
                break;
            default:
                ESP_LOGE(TAG, LOG_FMT("unexpected state"));
                data->error = HTTPD_500_INTERNAL_SERVER_ERROR;
                break;
        }
        data->status = PARSING_FAILED;
        return -1;
    }


    if (data->paused) {
        nparsed = continue_parsing(parser, length);
        length -= nparsed;
        offset += nparsed;
        if (!length) {
            return nparsed;
        }
    }


    nparsed = http_parser_execute(parser, &data->settings,
                                  raux->scratch + offset, length);


    if (data->status == PARSING_FAILED) {


        ESP_LOGW(TAG, LOG_FMT("parsing failed"));
        return -1;
    } else if (data->paused) {





        data->pre_parsed -= (length - nparsed);
        return 0;
    } else if (nparsed != length) {

        data->error = HTTPD_400_BAD_REQUEST;
        data->status = PARSING_FAILED;
        ESP_LOGW(TAG, LOG_FMT("incomplete (%d/%d) with parser error = %d"),
                 nparsed, length, parser->http_errno);
        return -1;
    }



    ESP_LOGD(TAG, LOG_FMT("parsed block size = %d"), offset + nparsed);
    return offset + nparsed;
}
