
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct httpd_req_aux {size_t resp_hdrs_count; TYPE_2__* resp_hdrs; } ;
struct TYPE_6__ {size_t max_resp_headers; } ;
struct httpd_data {TYPE_1__ config; } ;
struct TYPE_8__ {scalar_t__ handle; struct httpd_req_aux* aux; } ;
typedef TYPE_3__ httpd_req_t ;
typedef int esp_err_t ;
struct TYPE_7__ {char const* field; char const* value; } ;


 int ESP_ERR_HTTPD_INVALID_REQ ;
 int ESP_ERR_HTTPD_RESP_HDR ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_LOGD (int ,int ,char const*,char const*) ;
 int ESP_OK ;
 int LOG_FMT (char*) ;
 int TAG ;
 int httpd_valid_req (TYPE_3__*) ;

esp_err_t httpd_resp_set_hdr(httpd_req_t *r, const char *field, const char *value)
{
    if (r == ((void*)0) || field == ((void*)0) || value == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    if (!httpd_valid_req(r)) {
        return ESP_ERR_HTTPD_INVALID_REQ;
    }

    struct httpd_req_aux *ra = r->aux;
    struct httpd_data *hd = (struct httpd_data *) r->handle;


    if (ra->resp_hdrs_count >= hd->config.max_resp_headers) {
        return ESP_ERR_HTTPD_RESP_HDR;
    }


    ra->resp_hdrs[ra->resp_hdrs_count].field = field;
    ra->resp_hdrs[ra->resp_hdrs_count].value = value;
    ra->resp_hdrs_count++;

    ESP_LOGD(TAG, LOG_FMT("new header = %s: %s"), field, value);
    return ESP_OK;
}
