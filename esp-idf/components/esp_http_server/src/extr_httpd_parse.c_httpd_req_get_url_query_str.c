
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct http_parser_url {int field_set; TYPE_1__* field_data; } ;
struct httpd_req_aux {struct http_parser_url url_parse_res; } ;
struct TYPE_6__ {char* uri; struct httpd_req_aux* aux; } ;
typedef TYPE_2__ httpd_req_t ;
typedef int esp_err_t ;
struct TYPE_5__ {int off; int len; } ;


 int ESP_ERR_HTTPD_INVALID_REQ ;
 int ESP_ERR_HTTPD_RESULT_TRUNC ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;
 int MIN (size_t,size_t) ;
 int UF_QUERY ;
 int httpd_valid_req (TYPE_2__*) ;
 int strlcpy (char*,char const*,int ) ;

esp_err_t httpd_req_get_url_query_str(httpd_req_t *r, char *buf, size_t buf_len)
{
    if (r == ((void*)0) || buf == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    if (!httpd_valid_req(r)) {
        return ESP_ERR_HTTPD_INVALID_REQ;
    }

    struct httpd_req_aux *ra = r->aux;
    struct http_parser_url *res = &ra->url_parse_res;


    if (res->field_set & (1 << UF_QUERY)) {
        const char *qry = r->uri + res->field_data[UF_QUERY].off;



        size_t min_buf_len = res->field_data[UF_QUERY].len + 1;

        strlcpy(buf, qry, MIN(buf_len, min_buf_len));
        if (buf_len < min_buf_len) {
            return ESP_ERR_HTTPD_RESULT_TRUNC;
        }
        return ESP_OK;
    }
    return ESP_ERR_NOT_FOUND;
}
