
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct httpd_req_aux {char* content_type; } ;
struct TYPE_4__ {struct httpd_req_aux* aux; } ;
typedef TYPE_1__ httpd_req_t ;
typedef int esp_err_t ;


 int ESP_ERR_HTTPD_INVALID_REQ ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int httpd_valid_req (TYPE_1__*) ;

esp_err_t httpd_resp_set_type(httpd_req_t *r, const char *type)
{
    if (r == ((void*)0) || type == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    if (!httpd_valid_req(r)) {
        return ESP_ERR_HTTPD_INVALID_REQ;
    }

    struct httpd_req_aux *ra = r->aux;
    ra->content_type = (char *)type;
    return ESP_OK;
}
