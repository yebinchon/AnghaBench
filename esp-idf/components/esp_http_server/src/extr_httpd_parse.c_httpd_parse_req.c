
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct httpd_data {int hd_req; } ;
struct TYPE_3__ {scalar_t__ status; int raw_datalen; int error; } ;
typedef TYPE_1__ parser_data_t ;
typedef int httpd_req_t ;
typedef int http_parser ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_LOGD (int ,int ) ;
 int HTTPD_SOCK_ERR_TIMEOUT ;
 int LOG_FMT (char*) ;
 int PARSER_BLOCK_SIZE ;
 scalar_t__ PARSING_COMPLETE ;
 int TAG ;
 int httpd_req_handle_err (int *,int ) ;
 int httpd_uri (struct httpd_data*) ;
 int parse_block (int *,int,int) ;
 int parse_init (int *,int *,TYPE_1__*) ;
 int read_block (int *,int,int ) ;

__attribute__((used)) static esp_err_t httpd_parse_req(struct httpd_data *hd)
{
    httpd_req_t *r = &hd->hd_req;
    int blk_len, offset;
    http_parser parser;
    parser_data_t parser_data;


    parse_init(r, &parser, &parser_data);


    offset = 0;
    do {

        if ((blk_len = read_block(r, offset, PARSER_BLOCK_SIZE)) < 0) {
            if (blk_len == HTTPD_SOCK_ERR_TIMEOUT) {




                continue;
            }



            return ESP_FAIL;
        }



        parser_data.raw_datalen = blk_len + offset;


        if ((offset = parse_block(&parser, offset, blk_len)) < 0) {



            return httpd_req_handle_err(r, parser_data.error);
        }
    } while (parser_data.status != PARSING_COMPLETE);

    ESP_LOGD(TAG, LOG_FMT("parsing complete"));
    return httpd_uri(hd);
}
