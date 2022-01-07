
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct httpd_req_aux {int remaining_len; } ;
struct TYPE_5__ {struct httpd_req_aux* aux; } ;
typedef TYPE_1__ httpd_req_t ;


 int ESP_LOGD (int ,int ,...) ;
 int ESP_LOGW (int ,int ) ;
 int HTTPD_SOCK_ERR_INVALID ;
 int LOG_FMT (char*) ;
 int TAG ;
 int httpd_recv (TYPE_1__*,char*,size_t) ;
 int httpd_valid_req (TYPE_1__*) ;

int httpd_req_recv(httpd_req_t *r, char *buf, size_t buf_len)
{
    if (r == ((void*)0) || buf == ((void*)0)) {
        return HTTPD_SOCK_ERR_INVALID;
    }

    if (!httpd_valid_req(r)) {
        ESP_LOGW(TAG, LOG_FMT("invalid request"));
        return HTTPD_SOCK_ERR_INVALID;
    }

    struct httpd_req_aux *ra = r->aux;
    ESP_LOGD(TAG, LOG_FMT("remaining length = %d"), ra->remaining_len);

    if (buf_len > ra->remaining_len) {
        buf_len = ra->remaining_len;
    }
    if (buf_len == 0) {
        return buf_len;
    }

    int ret = httpd_recv(r, buf, buf_len);
    if (ret < 0) {
        ESP_LOGD(TAG, LOG_FMT("error in httpd_recv"));
        return ret;
    }
    ra->remaining_len -= ret;
    ESP_LOGD(TAG, LOG_FMT("received length = %d"), ret);
    return ret;
}
