
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct httpd_req_aux {TYPE_1__* sd; } ;
struct TYPE_6__ {struct httpd_req_aux* aux; } ;
typedef TYPE_2__ httpd_req_t ;
struct TYPE_5__ {int (* send_fn ) (int ,int ,char const*,size_t,int ) ;int fd; int handle; } ;


 int ESP_LOGD (int ,int ) ;
 int HTTPD_SOCK_ERR_INVALID ;
 int LOG_FMT (char*) ;
 int TAG ;
 int httpd_valid_req (TYPE_2__*) ;
 int stub1 (int ,int ,char const*,size_t,int ) ;

int httpd_send(httpd_req_t *r, const char *buf, size_t buf_len)
{
    if (r == ((void*)0) || buf == ((void*)0)) {
        return HTTPD_SOCK_ERR_INVALID;
    }

    if (!httpd_valid_req(r)) {
        return HTTPD_SOCK_ERR_INVALID;
    }

    struct httpd_req_aux *ra = r->aux;
    int ret = ra->sd->send_fn(ra->sd->handle, ra->sd->fd, buf, buf_len, 0);
    if (ret < 0) {
        ESP_LOGD(TAG, LOG_FMT("error in send_fn"));
        return ret;
    }
    return ret;
}
