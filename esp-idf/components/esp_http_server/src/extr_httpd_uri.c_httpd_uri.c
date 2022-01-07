
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct http_parser_url {int field_set; TYPE_2__* field_data; } ;
struct TYPE_8__ {struct http_parser_url url_parse_res; } ;
struct TYPE_11__ {int user_ctx; int uri; int method; } ;
struct httpd_data {TYPE_1__ hd_req_aux; TYPE_4__ hd_req; } ;
struct TYPE_10__ {scalar_t__ (* handler ) (TYPE_4__*) ;int user_ctx; } ;
typedef TYPE_3__ httpd_uri_t ;
typedef TYPE_4__ httpd_req_t ;
typedef int httpd_err_code_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_9__ {int off; int len; } ;


 scalar_t__ ESP_FAIL ;
 int ESP_LOGD (int ,int ,int ,int ) ;
 int ESP_LOGW (int ,int ,...) ;
 scalar_t__ ESP_OK ;


 int LOG_FMT (char*) ;
 int TAG ;
 int UF_PATH ;
 TYPE_3__* httpd_find_uri_handler (struct httpd_data*,int ,int ,int ,int*) ;
 scalar_t__ httpd_req_handle_err (TYPE_4__*,int const) ;
 scalar_t__ stub1 (TYPE_4__*) ;

esp_err_t httpd_uri(struct httpd_data *hd)
{
    httpd_uri_t *uri = ((void*)0);
    httpd_req_t *req = &hd->hd_req;
    struct http_parser_url *res = &hd->hd_req_aux.url_parse_res;


    httpd_err_code_t err = 0;

    ESP_LOGD(TAG, LOG_FMT("request for %s with type %d"), req->uri, req->method);


    if (res->field_set & (1 << UF_PATH)) {
        uri = httpd_find_uri_handler(hd, req->uri + res->field_data[UF_PATH].off,
                                     res->field_data[UF_PATH].len, req->method, &err);
    }


    if (uri == ((void*)0)) {
        switch (err) {
            case 129:
                ESP_LOGW(TAG, LOG_FMT("URI '%s' not found"), req->uri);
                return httpd_req_handle_err(req, 129);
            case 128:
                ESP_LOGW(TAG, LOG_FMT("Method '%d' not allowed for URI '%s'"),
                         req->method, req->uri);
                return httpd_req_handle_err(req, 128);
            default:
                return ESP_FAIL;
        }
    }


    req->user_ctx = uri->user_ctx;


    if (uri->handler(req) != ESP_OK) {

        ESP_LOGW(TAG, LOG_FMT("uri handler execution failed"));
        return ESP_FAIL;
    }
    return ESP_OK;
}
