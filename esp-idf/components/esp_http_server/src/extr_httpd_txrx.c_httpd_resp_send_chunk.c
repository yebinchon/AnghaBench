
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct httpd_req_aux {int first_chunk_sent; char* scratch; unsigned int resp_hdrs_count; TYPE_1__* resp_hdrs; int content_type; int status; scalar_t__ req_hdrs_count; } ;
typedef int ssize_t ;
typedef int len_str ;
struct TYPE_7__ {struct httpd_req_aux* aux; } ;
typedef TYPE_2__ httpd_req_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_6__ {char* field; char* value; } ;


 scalar_t__ ESP_ERR_HTTPD_INVALID_REQ ;
 scalar_t__ ESP_ERR_HTTPD_RESP_HDR ;
 scalar_t__ ESP_ERR_HTTPD_RESP_SEND ;
 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_OK ;
 int HTTPD_RESP_USE_STRLEN ;
 scalar_t__ httpd_send_all (TYPE_2__*,char const*,size_t) ;
 int httpd_valid_req (TYPE_2__*) ;
 int snprintf (char*,int,char const*,int,...) ;
 size_t strlen (char const*) ;

esp_err_t httpd_resp_send_chunk(httpd_req_t *r, const char *buf, ssize_t buf_len)
{
    if (r == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    if (!httpd_valid_req(r)) {
        return ESP_ERR_HTTPD_INVALID_REQ;
    }

    if (buf_len == HTTPD_RESP_USE_STRLEN) {
        buf_len = strlen(buf);
    }

    struct httpd_req_aux *ra = r->aux;
    const char *httpd_chunked_hdr_str = "HTTP/1.1 %s\r\nContent-Type: %s\r\nTransfer-Encoding: chunked\r\n";
    const char *colon_separator = ": ";
    const char *cr_lf_seperator = "\r\n";


    ra->req_hdrs_count = 0;

    if (!ra->first_chunk_sent) {

        if (snprintf(ra->scratch, sizeof(ra->scratch), httpd_chunked_hdr_str,
                     ra->status, ra->content_type) >= sizeof(ra->scratch)) {
            return ESP_ERR_HTTPD_RESP_HDR;
        }


        if (httpd_send_all(r, ra->scratch, strlen(ra->scratch)) != ESP_OK) {
            return ESP_ERR_HTTPD_RESP_SEND;
        }


        for (unsigned i = 0; i < ra->resp_hdrs_count; i++) {

            if (httpd_send_all(r, ra->resp_hdrs[i].field, strlen(ra->resp_hdrs[i].field)) != ESP_OK) {
                return ESP_ERR_HTTPD_RESP_SEND;
            }

            if (httpd_send_all(r, colon_separator, strlen(colon_separator)) != ESP_OK) {
                return ESP_ERR_HTTPD_RESP_SEND;
            }

            if (httpd_send_all(r, ra->resp_hdrs[i].value, strlen(ra->resp_hdrs[i].value)) != ESP_OK) {
                return ESP_ERR_HTTPD_RESP_SEND;
            }

            if (httpd_send_all(r, cr_lf_seperator, strlen(cr_lf_seperator)) != ESP_OK) {
                return ESP_ERR_HTTPD_RESP_SEND;
            }
        }


        if (httpd_send_all(r, cr_lf_seperator, strlen(cr_lf_seperator)) != ESP_OK) {
            return ESP_ERR_HTTPD_RESP_SEND;
        }
        ra->first_chunk_sent = 1;
    }


    char len_str[10];
    snprintf(len_str, sizeof(len_str), "%x\r\n", buf_len);
    if (httpd_send_all(r, len_str, strlen(len_str)) != ESP_OK) {
        return ESP_ERR_HTTPD_RESP_SEND;
    }

    if (buf) {
        if (httpd_send_all(r, buf, (size_t) buf_len) != ESP_OK) {
            return ESP_ERR_HTTPD_RESP_SEND;
        }
    }


    if (httpd_send_all(r, "\r\n", strlen("\r\n")) != ESP_OK) {
        return ESP_ERR_HTTPD_RESP_SEND;
    }
    return ESP_OK;
}
